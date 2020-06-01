class Livre < ApplicationRecord
  validates :title, presence: true,
end
