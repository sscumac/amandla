class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  def index

    filter_by_location

    @markers = @places.map do |place|

      {
        lat: place.latitude,
        lng: place.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { place: place }),
        image_url: helpers.asset_url('https://res.cloudinary.com/dpnjiruwh/image/upload/v1607530616/download_ahvevg.png')
      }
    end
  end

  def show
    @place = Place.find(params[:id])
    @markers = [{
      lat: @place.latitude,
      lng: @place.longitude,
      infoWindow: render_to_string(partial: "info_window", locals: { place: @place }),
      image_url: helpers.asset_url('https://res.cloudinary.com/dpnjiruwh/image/upload/v1607530616/download_ahvevg.png')
    }]
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
    params.require(:place).permit(:name, :address, :category, :google_maps_url, :story, :photo, tag_list: [])
  end

  def filter_by_location
    if params[:place] && params[:place][:location].present?
      @places = Place.geocoded.near(params[:location], 10)
    else
      @places = Place.geocoded
    end
    if params[:place] && params[:place][:category].present?
      @places = @places.select { |place| place.category == params[:place][:category] }
    end
    if params[:place] && params[:place][:tag_list][1].present?
      @places = @places.select { |place| params[:place][:tag_list].drop(1).all? { |tag| place.tag_list.include?(tag) } }
    end
  end
end
