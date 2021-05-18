source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

ruby '2.4.1'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'

gem 'carrierwave'
gem 'carrierwave-i18n'
gem 'devise'
gem 'devise-i18n'
gem 'friendly_id'
gem 'i18n'
gem 'jquery-rails'
gem 'jquery-turbolinks'
gem 'kaminari'
gem 'kaminari-i18n'
gem 'material_icons'
gem 'materialize-sass', '0.100'
gem 'mini_magick'
gem 'rails-i18n'
gem 'tzinfo-data'

group :development, :test do
  gem 'dotenv-rails'
  gem 'pry-byebug'
  gem 'rails-controller-testing'
  gem 'rspec-rails'
  gem 'rubocop'
end

group :test do
  gem 'simplecov', require: false
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'brakeman', require: false
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rails-erd', require: false
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
