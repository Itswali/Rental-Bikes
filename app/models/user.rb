class User < ApplicationRecord
    has_many :items
    has_many :reservations
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true
end
