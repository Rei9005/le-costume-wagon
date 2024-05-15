class BookingsController < ApplicationController


  def show
    @booking = Booking.find(params[:id])
=======
  def new
    @booking = Booking.new(booking_params)
  end

  def create
    @user = current_user
    @costume = Costume.find(params[:costume_id])
    @booking = Booking.new(booking_params)
    @booking.costume = @costume
    @booking.user = @user
    @booking.save
    if @booking.id
      redirect_to costumes_path
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def index
    @user = current_user
    @bookings = @user.bookings

  end


end
