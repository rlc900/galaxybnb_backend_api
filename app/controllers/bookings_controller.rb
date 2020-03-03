class BookingsController < ApplicationController

before_action :authorized, only: [:create]


  def index
    @bookings = Booking.all

    render json: @bookings
  end

  def create
    @booking = Booking.create(user: @user, location_id: params[:location_id], datesRange: params[:datesRange], numOfTravelers: params[:numOfTravelers])

    render json: LocationSerializer.new(@booking.location).as_json.merge(@booking.infoHash)
  end
end
