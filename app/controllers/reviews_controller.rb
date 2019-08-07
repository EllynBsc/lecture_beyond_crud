class ReviewsController < ApplicationController
  def new
    # raise
    @restaurant =  Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    # raise
    # @resto =  Restaurant.find(params[:restaurant_id])
    @review = Review.new(reviews_strong_params)
    @review.restaurant =  Restaurant.find(params[:restaurant_id])
    # @review.restaurant_id = @resto.id
    if @review.save #return true or false
      redirect_to restaurant_path(@review.restaurant)
    else
      render :new
    end
  end

  def reviews_strong_params
    params.require(:review).permit(:content)
  end
end
