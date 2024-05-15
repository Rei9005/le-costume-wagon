class BookingsController < ApplicationController
  
  def index
    @bookings = Booking.where(user: current_user)
  end


  def show
    @booking = Booking.find(params[:id])
  end

  def new
     @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.costume = Costume.find(params[:costume_id])
    @booking.status = 'pending'
    if @booking.save
      flash[:success] = "Booking created successfully!"
      redirect_to bookings_path
    else
      render 'costumes/show'
    end
  end

private
    
  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end