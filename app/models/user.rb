class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :items, dependent: :destroy
  has_many :reservations, dependent: :destroy, class_name: 'Reservation'
  # has_many :items
  has_many :reservations
  validates :email, presence: true, uniqueness: true
end
