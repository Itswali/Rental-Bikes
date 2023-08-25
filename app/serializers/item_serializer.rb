class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :image_url, :description
  # has_many :reservations
end
