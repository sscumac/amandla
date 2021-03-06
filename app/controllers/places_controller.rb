class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
  def index

    location_coord

    filter_by_location



    @markers = @places.map do |place|

      {
        lat: place.latitude,
        lng: place.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { place: place }),
        image_url: helpers.asset_url('https://res.cloudinary.com/dpnjiruwh/image/upload/v1608203373/amandla_map_placeholder_1_n9cmqd.png')
      }
    end
  end

  def show
    @place = Place.find(params[:id])
    # @questions = Question.find(@place.question_ids)
    @answered_questions = @place.user.answered_questions.reverse
    @markers = [{
      lat: @place.latitude,
      lng: @place.longitude,
      infoWindow: render_to_string(partial: "info_window", locals: { place: @place }),
      image_url: helpers.asset_url('https://res.cloudinary.com/dpnjiruwh/image/upload/v1608203373/amandla_map_placeholder_1_n9cmqd.png')
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
    params.require(:place).permit(:name, :address, :category, :story, :photo, tag_list: [], photos_venue: [])
  end

  def filter_by_location
    if params[:place] && params[:place][:location].present?
      @places = Place.geocoded.near(params[:place][:location], 10)
    else
      @places = Place.geocoded
    end
    if params[:place] && params[:place][:category].present?
      @places = @places.select { |place| place.category == params[:place][:category] }
    end
    if params[:place] && params[:place][:tag_list] && params[:place][:tag_list][1].present?
      @places = @places.select { |place| params[:place][:tag_list].drop(1).all? { |tag| place.tag_list.include?(tag) } }
    end
  end

  def location_coord
    if params[:place] && params[:place][:location].present?
      @location_coord = Geocoder.search(params[:place][:location]).first.coordinates
    else
      @location_coord = [41.40539057735755, 2.1647695790020993] # lewagon barcelona
    end
  end

end
