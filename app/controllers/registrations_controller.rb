# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController
  def update
    if validate_password
      self.resource = resource_class.to_adapter.get!(send(:"current_#{resource_name}").to_key)
      prev_unconfirmed_email = resource.unconfirmed_email if resource.respond_to?(:unconfirmed_email)

      resource.new_user = false

      resource_updated = update_resource(resource, account_update_params)
      yield resource if block_given?
      if resource_updated
        if is_flashing_format?
          flash_key = update_needs_confirmation?(resource, prev_unconfirmed_email) ?
            :update_needs_confirmation : :updated
          set_flash_message :notice, flash_key
        end
        bypass_sign_in resource, scope: resource_name
        respond_with resource, location: after_update_path_for(resource)
      else
        clean_up_passwords resource
        set_minimum_password_length
        respond_with resource
      end
    else
      render "devise/registrations/edit"
    end
  end

  private

    def account_update_params
      params.require(:user).permit(:username, :name, :responsible, :telephone, :mini_cv, :email, :password, :current_password, :password_confirmation)
    end

    def validate_password
      if params[:user][:password] != params[:user][:password_confirmation]
        flash[:alert] = "Senha e Confirmação de Senha devem ser iguais."
        false
      else
        flash[:alert] = ""
        true
      end
    end
end
