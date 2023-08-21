class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :image_url, :description
  belongs_to :user
  has_many :reservations
end
