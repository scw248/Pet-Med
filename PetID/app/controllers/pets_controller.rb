# frozen_string_literal: true

class PetsController < ApplicationController

  def index
    if
      @pets = User.find(params[:user_id]).pets
    else
      redirect_to root_path
    end
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.create(pet_params)
    @pet.user_id = current_user.id
    # @pet.save
    redirect_to pet_path(@pet)
  end

  def show
    @pet = pet
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
    params.require(:pet).permit(:name, :animal_type, :breed, :gender, :birthdate, :weight)
  end

  def pet
    @pet ||= Pet.find(params[:id])
  end
end
