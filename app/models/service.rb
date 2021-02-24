class Service < ApplicationRecord
  has_one_attached :logo
  has_one_attached :image
  has_many :activities
end
