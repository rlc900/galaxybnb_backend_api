class ReviewsController < ApplicationController

  before_action :authorized, only: [:create]

  def index
    @reviews = Review.all

    render json: @reviews
  end

  def show
    @review = Review.find(params[:id])

    render json: @review
  end

  def create
    # byebug
    @review = Review.create(rating: params[:rating], user: @user, location_id: params[:location_id])
    # byebug
    render json: @review
    # byebug
  end
end
