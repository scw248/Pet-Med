# frozen_string_literal: true

class UsersController < ApplicationController
  # before_action :user

  def show
    @user = current_user
  end

  # private

  # def user
  #   @user ||= User.find(params[:id])
  # end
end
