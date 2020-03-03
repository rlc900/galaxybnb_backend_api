class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :locationsBooked

  # has_many :bookings
  # has_many :booked_locations

  has_many :reviews
  has_many :reviewed_locations

  def locationsBooked
    self.object.bookings.map do |booking|
      LocationSerializer.new(booking.location).as_json.merge(booking.infoHash)
    end
  end
end
