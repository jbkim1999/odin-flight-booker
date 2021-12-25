class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.create(booking_params) # no need to build passengers
    @booking.passengers.each do |passenger|
      PassengerMailer.with(booking: @booking, passenger: passenger).confirmation_email.deliver_later
    end
    redirect_to @booking
  end
  
  private
  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes:
      [:id, :name, :email])
	end
end
