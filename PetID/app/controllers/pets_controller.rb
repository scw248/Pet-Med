# frozen_string_literal: true

class PetsController < ApplicationController

  def index
    if params[:user_id]
      @pets = User.find(params[:user_id]).pets
      @user = User.find(params[:user_id])
    else
      redirect_to user_pets_path
    end
  end

  def new
    if params[:user_id] && !User.exists?(params[:user_id])
      flash[:notice] = 'User not found.'
      redirect_to new_user_registration_path
    else
      @pet = Pet.new(user_id: params[:user_id])
    end
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      @user = current_user
      redirect_to user_pet_path(@user, @pet)
    else
      render :new
    end
  end

  def show
    @pet = pet
    @user = current_user
  end

  def edit
    if params[:user_id]
      user = User.find_by(id: params[:user_id])
      if user.nil?
        flash[:notice] = 'User not found.'
        redirect_to new_user_registration_path
      else
        @pet = user.pets.find_by(id: params[:id])
        redirect_to user_pets_path(user), flash[:notice] = 'Pet not found.' if @pet.nil?
      end
    else
      @pet = pet
      @user = current_user
    end
  end

  def update
    @pet = pet
    @pet.update(pet_params)
    if @pet.errors.none?
      @user = current_user
      redirect_to user_pet_path(@user, @pet)
    else
      render :edit
    end
  end

  def destroy
    pet.destroy
    redirect_to root_path
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :animal_type, :breed, :gender, :birthdate, :weight, :user_id, :image)
  end

  def pet
    @pet ||= Pet.find(params[:id])
  end
end