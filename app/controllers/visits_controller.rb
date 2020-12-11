class VisitsController < ApplicationController

  def index
    @visits = current_user.visits
  end

  def create
    @place = Place.find(params[:place_id])
    @visit = Visit.new(user: current_user)
    @visit.place = @place
    if @visit.save
      redirect_to @place.google_maps_url, notice: "successfull" #when visits index page set up, redirect to that page
    else
      redirect_to place_path(@place), notice: "boooo"
    end
  end

end
