# frozen_string_literal: true

class Grade < ApplicationRecord
  mount_uploader :document, DocumentUploader

  belongs_to :course
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: { maximum: 100 }
  validates :description, presence: true, length: { maximum: 255 }
  validates :video_link, presence: true, length: { maximum: 100 }
  validates :course_id, presence: true
end
