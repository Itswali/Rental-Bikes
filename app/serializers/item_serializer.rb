class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :image_url, :description
end
