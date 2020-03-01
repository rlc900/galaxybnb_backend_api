class ReviewsController < ApplicationController

  before_action :authorized, only: [:create]

  def index
    @reviews = Review.all

    render json: @reviews
  end

  def show
    @review = Review.find(params[:id])
  end

  def create
    # byebug
    @review = Review.create(rating: params[:rating], user: @user, location_id: params[:location_id])
    render json: @review
  end
end
