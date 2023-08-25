class Reservation < ApplicationRecord
  belongs_to :user
  # belongs_to :item

  validates :city, presence: true
end
