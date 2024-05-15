class BookingsController < ApplicationController
  def index
    @bookings = booking.all
  end

  def new
    @booking = Booking.new(booking_params)
  enx

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

def show
  @booking = Booking.find(params[:id])
end


  private

  def booking_params
    params.require(:booking).permit(:user_id, :costume_id, :start_time, :end_time, :status)
  end
end
