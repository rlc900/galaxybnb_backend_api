class UserSerializer < ActiveModel::Serializer
  attributes :id, :username

  has_many :bookings
  has_many :booked_locations, through: :bookings, source: :location

  has_many :reviews
  has_many :reviewed_locations, through: :reviews, source: :location
end
