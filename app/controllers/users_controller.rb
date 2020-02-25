class UsersController < ApplicationController
  before_action :authorized, only: [:persist]


  def index
    @users = User.all

    render json: @users
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      token = encode_token({user_id: @user.id})
      render json: {user: UserSerializer.new(@user), token: token}
    else
      render json: { error: 'Invalid username or password' }
    end
  end

  def login
    # byebug
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      token = encode_token({user_id: @user.id})
      render json: {user: UserSerializer.new(@user), token: token}
    else
      render json: {error: 'Invalid username or password'}
    end
  end

  def persist
    token = encode_token({user_id: @user.id})
    render json: {user: UserSerializer.new(@user), token: token}
  end

  def update
   # byebug
   @user = User.find(params[:id])
   @user.update_attribute('username', params[:username])
   token = encode_token({user_id: @user.id})
   render json: {user: UserSerializer.new(@user), token: token}
 end

 def destroy
   # byebug
   @user = User.find(params[:id])
   @user.destroy
   render json: {message: 'Success!'}
 end


private

  def user_params
    params.permit(:username, :password)
  end


end
