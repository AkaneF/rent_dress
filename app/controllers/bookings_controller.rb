class BookingsController < ApplicationController
  def new
    @dress = Dress.find(params[:dress_id])

    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @dress = Dress.find(params[:dress_id])
  end

  def index
    @bookings = Booking.all
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :confirm)
  end

end
