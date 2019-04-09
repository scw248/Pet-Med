class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.create(user_params)
    session[:user_id] = user.id
    redirect_to user_path(user)
  end

  def show
    @user = user
  end

  private
    def user_params
      params.require(:user).permit(:email, :password)
    end

    def user
      @user ||= User.find(params[:id])
    end
end