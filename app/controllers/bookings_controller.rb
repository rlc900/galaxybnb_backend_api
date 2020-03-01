class BookingsController < ApplicationController

  def index
    @bookings = Booking.all

    render json: @bookings
  end

  def create

  end
end
