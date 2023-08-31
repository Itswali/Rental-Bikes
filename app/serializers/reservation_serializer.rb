class ReservationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :Date, :city
  belongs_to :user
  belongs_to :item
end
