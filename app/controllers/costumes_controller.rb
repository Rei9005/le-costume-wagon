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
  end

  def new
  end

  def create
  end
end
