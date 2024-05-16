class Owner::BookingsController < ApplicationController

  def index
    @bookings = current_user.bookings_as_owner
    # This is special way to invoke the controller
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to owner_bookings_path
    else
      render :index
    end
  end

  private

  def booking_params
    # TODO: check your model, might be different than mine
    params.require(:booking).permit(:status, :start_time, :end_time)
  end

end
