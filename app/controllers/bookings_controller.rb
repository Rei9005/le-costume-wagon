class BookingsController < ApplicationController
  def index
    @bookings = booking.all
  end

  def new
    @booking = booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to list_path(@booking)
    else
      render 'new', status: :unprocessable_entity
    end
  end
end
