class ReviewsController < ApplicationController

  def index
    @reviews = Review.all

    render json: @reviews
  end

  def show
    @review = Review.find(params[:id])
  end

  def create
    @user = User.find(params[:id])
    @review = Review.create(rating: params[:rating], user_id: @user.id)

    render json: @review
  end
end
