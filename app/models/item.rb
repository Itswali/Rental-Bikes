class Item < ApplicationRecord
  has_many :reservations, dependent: :destroy, class_name: 'Reservation'

  validates :title, presence: true
  validates :image_url, presence: true
  validates :description, presence: true
end
