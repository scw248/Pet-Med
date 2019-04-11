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
    @pet = Pet.new(user_id: params[:user_id])
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
