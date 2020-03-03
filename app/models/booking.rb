class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :location

  def infoHash
    return {booking_id: self.id, numOfTravelers: self.numOfTravelers, datesRange: self.datesRange}
  end
end
