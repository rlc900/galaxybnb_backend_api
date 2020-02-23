class UsersController < ApplicationController

  def index
    @users = User.all

    render json: @users
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: @user
    else
      render json: { error: 'Invalid username or password' }
    end
  end

  def login
    # byebug
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      render json: @user
    else
      render json: {error: 'Invalid username or password'}
    end
  end


private

def user_params
  params.permit(:username, :password)
end


end
