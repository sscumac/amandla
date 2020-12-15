class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  def index
    
    filter_by_location

    location_coord
    

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
    # @questions = Question.find(@place.question_ids)
    @answered_questions = @place.user.answered_questions
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
    params.require(:place).permit(:name, :address, :category, :story, :photo, tag_list: [])
  end

  def filter_by_location
    if params[:location].present?
      @places = Place.geocoded.near(params[:location], 10)
    else
      @places = Place.geocoded
    end
    if params[:category].present?
      @places = @places.select { |place| place.category == params[:category] }
    end
    if params[:tag_list].present?
      @places = @places.select { |place| params[:tag_list].all? { |tag| place.tag_list.include?(tag) } }
    end
  end

  def location_coord
    if params[:location].present?
      @location_coord = Geocoder.search(params[:location]).first.coordinates
    else
      @location_coord = [41.40539057735755, 2.1647695790020993] # lewagon barcelona
    end
  end

end
