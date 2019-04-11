# frozen_string_literal: true

class PetsController < ApplicationController
  def index
    if params[:user_id]
      @pets = User.find(params[:user_id]).pets
      @user = User.find(params[:user_id])
    else
      flash[:notice] = 'You Currently Do Not Have Any Pets'
      redirect_to new_user_pet_path
    end
  end

  def new
    if params[:user_id] && !User.exists?(params[:user_id])
      redirect_to new_user_registration_path alert: 'User not found.'
    else
      @pet = Pet.new(user_id: params[:user_id])
    end
  end

  def create
    @pet = Pet.create(pet_params)
    redirect_to pet_path(@pet)
  end

  def show
    @pet = pet
    @user = current_user # added this because user_id wasn't working in show view
  end

  def edit
    if params[:user_id]
      user = User.find_by(id: params[:user_id])
      if user.nil?
        redirect_to new_user_registration_path, alert: 'User not found.'
      else
        @pet = user.pets.find_by(id: params[:id])
        redirect_to user_pets_path(user), alert: 'Pet not found.' if @pet.nil?
      end
    else
      @pet = pet
    end
  end

  def update
    @pet = pet
    @pet.update(pet_params)
    redirect_to pet_path(@pet)
  end

  def destroy
    pet.destroy
    redirect_to root_path
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :animal_type, :breed, :gender, :birthdate, :weight, :user_id)
  end

  def pet
    @pet ||= Pet.find(params[:id])
  end
end
