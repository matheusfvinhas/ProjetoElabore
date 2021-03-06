# frozen_string_literal: true

class Notice < ApplicationRecord
  mount_uploader :document, DocumentUploader

  belongs_to :user

  validates :title, presence: true, length: { maximum: 100 }
  validates :description, presence: true, length: { maximum: 255 }
  validates :user_id, presence: true
end
