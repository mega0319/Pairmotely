class UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def create
    user = User.create(user_params)
    users = User.all
    render json: users
  end

  def update
    user = User.find(params[:id])
    # byebug
    user.update(user_params)
    render json: user
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :email, :play_chips)
  end

end
