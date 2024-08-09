class CostumesController < ApplicationController

  def index
    @costumes = Costume.all

    if params[:query].present?
      @costumes = @costumes.where('character ILIKE ?', "%#{params[:query]}%")
    end


    if params[:sort_by].present?

      if params[:sort_by] == 'cost_asc'
        @costumes = @costumes.order(price: :asc)
      elsif params[:sort_by] == 'cost_desc'
        @costumes = @costumes.order(price: :desc)
      end
    end

    if params[:genres].present? && params[:genres].include?("All")
      @costumes = Costume.all
    elsif params[:genres].present?
      @costumes = @costumes.where(genre: params[:genres])
    end
  end

  # def show
  #   @costume = Costume.find(params[:id])
  #   @booking = Booking.new
  # end

  def show
    @costume = Costume.find_by(id: params[:id])
    if @costume.nil?
      redirect_to costumes_path, alert: 'コスチュームが見つかりません。'
    else
      @booking = Booking.new
    end
  end

  def new
    @costume = Costume.new
  end

  def create
    @costume = Costume.new(costume_params)
    @costume.user = current_user
    if @costume.save
      redirect_to costume_path(@costume), notice: 'Costume was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @costume = Costume.find(params[:id])
    @costume.destroy
    redirect_to costumes_path, status: :see_other
  end

  private

  def costume_params
    params.require(:costume).permit(:character, :genre, :price, :size, :description, photo: [])
  end
end
