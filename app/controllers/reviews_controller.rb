class ReviewsController < ApplicationController
  def create
    @review = Review.new(user_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    if @review.save
      redirect_to restaurant_path(params[:restaurant_id])
    else
      render :new
    end
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  private

  def user_params
    params.require(:review).permit(:content, :rating)
  end
end
