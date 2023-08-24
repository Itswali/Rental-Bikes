class Item < ApplicationRecord
  validates :title, presence: true
  validates :image_url, presence: true
  validates :description, presence: true
end
