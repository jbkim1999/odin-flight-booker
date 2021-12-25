class PassengerMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def confirmation_email
    @passenger = params[:passenger]
    @booking = params[:booking]
    @url  = "http://127.0.0.1:3000/bookings/#{@booking.id}"
    mail(to: @passenger.email, subject: 'Booking confirmed!')
  end
end
