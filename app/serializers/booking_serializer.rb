class BookingSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :location
end
