class Livre < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :author, presence: true
  validates :url, presence: true
  validates :description, presence: true
  validates :picture, presence: true
end
