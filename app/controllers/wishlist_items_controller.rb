class WishlistItemsController < ApplicationController
  def index
    @wishlist_items = current_user.wishlist_items
  end

  def create
    # redirect to index page and add an anchor to the place - ajax in rails lecture reviewa
    @place = Place.find(params[:place_id])
    @wishlist = WishlistItem.new(user: current_user)
    @wishlist.place = @place
    if @wishlist.save
      redirect_to places_path(anchor: "place_#{@place.id}")
    else
      redirect_to place_path(@place), notice: "boooo"
    end
  end

  def destroy
    @wishlist = WishlistItem.find(params[:id])
    @wishlist.destroy
    redirect_to places_path( anchor: "place_#{@wishlist.place.id}")
  end

end
