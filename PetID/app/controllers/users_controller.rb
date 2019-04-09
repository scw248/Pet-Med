# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :user

  def show; end

  private

  def user
    @user ||= User.find(params[:id])
  end
end
