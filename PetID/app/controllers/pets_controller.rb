class PetsController < ApplicationController
  def new
    @pet = Pet.new
  end

  def create
    new_pet = Pet.create(pet_params)
    redirect_to pet_path(new_pet)
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
