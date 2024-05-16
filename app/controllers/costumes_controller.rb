class CostumesController < ApplicationController

  def index
    @costumes = Costume.all

    if params[:query].present?
      @costumes = @costumes.where('character ILIKE ?', "%#{params[:query]}%")
    end

    if params[:genres].present?
      @costumes = @costumes.where(genre: params[:genres])
    end

    if params[:sort_by].present?
      if params[:sort_by] == 'cost_asc'
        @costumes = @costumes.order(price: :asc)
      elsif params[:sort_by] == 'cost_desc'
        @costumes = @costumes.order(price: :desc)
      end
    end
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

  private

  def costume_params
    params.require(:costume).permit(:character, :price, :size, :description, photos: [])
  end
end
