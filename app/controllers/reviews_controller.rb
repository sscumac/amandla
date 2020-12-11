class ReviewsController < ApplicationController
  # def index
  #   @reviews = Review.all
  # end

  # def show
  #   @review = Review.find(params[:place_id])
  # end

  def new
    @visit = Visit.find(params[:visit_id])
    @review = Review.new
    @review.visit = @visit
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    if @review.save
      redirect_to review_path(@review) #place_path(@place) ??????
    else
      render :new # jumps to view "new"
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
