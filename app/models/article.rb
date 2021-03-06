class Article < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :url, presence: true
  validates :picture, presence: true
end
