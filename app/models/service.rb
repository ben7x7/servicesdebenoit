class Service < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_one_attached :logo
  has_one_attached :image
  has_many :activities, dependent: :destroy
end
