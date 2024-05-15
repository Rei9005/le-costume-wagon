class CostumesController < ApplicationController

  def index

    if params[:query].present?
      @costumes = Costume.where('character ILIKE ?', "%#{params[:query]}%")
    else
      @costumes = []
    end
    render :index

  end

  def show
    @costume = Costume.find(params[:id])
    @booking = Booking.new
  end

  def new
    @costume = Costume.new
  end

  def create
    @costume = Costume.new(costume_params)
    if @costume.save
      redirect_to @costume, notice: 'Costume was successfully created.'
    else
      render :new
    end
  end

  private

  def costume_params
    params.require(:costume).permit(:name, :price, :size, :description, :image)
  end
end
