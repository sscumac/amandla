class PlacesController < ApplicationController
  def index

  end

  def show

  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    @place.user = current_user
    if @place.save
      redirect_to place_path(@place)
    else
      render :new # jumps to view "new"
    end
  end

  private

  def place_params
    params.require(:places).permit(:name, :address, :photos, :category, :story)
  end
end
