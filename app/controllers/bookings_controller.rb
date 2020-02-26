class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @dress = Dress.find(params[:dress_id])
    @booking = Booking.new
  end

  def create
    @dress = Dress.find(params[:dress_id])
    @booking = Booking.new(booking_params)
    @booking.dress = @dress
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end


  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :confirm)
  end

end
