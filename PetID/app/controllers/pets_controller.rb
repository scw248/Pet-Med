# frozen_string_literal: true

class PetsController < ApplicationController
  def new
    @pet = Pet.new(user_id: params[:user_id])
  end

  def create
    @pet = Pet.create(pet_params)
    redirect_to pet_path(@pet)
  end

  def index
    if current_user.has_pets
      @pets = current_user.pets
      @user = current_user
    else
      flash[:notice] = 'You Currently Do Not Have Any Pets'
      redirect_to new_user_pet_path
    end
  end

  def show
    @pet = pet
    @user = current_user
  end

  def edit
    @pet = pet
  end

  def update
    @pet = pet
    @pet.update(pet_params)
    redirect_to pet_path(@pet)
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :animal_type, :breed, :gender, :birthdate, :weight, :user_id)
  end

  def pet
    @pet ||= Pet.find(params[:id])
  end
end
