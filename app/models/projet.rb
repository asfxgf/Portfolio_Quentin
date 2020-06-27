class Projet < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :url_projet, presence: true
  validates :background_picture, presence: true
  validates :text, presence: true
  validates :picture_1, presence: true
  validates :picture_2, presence: true
  validates :picture_3, presence: true
  validates :picture_comment_1, presence: true
  validates :picture_comment_2, presence: true
  validates :picture_comment_3, presence: true
end
