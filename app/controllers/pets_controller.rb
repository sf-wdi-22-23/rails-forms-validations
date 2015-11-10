class PetsController < ApplicationController
  def show
    @owner = Owner.find(params[:owner_id])
    @pet = Pet.find(params[:id])
  end

  def create
    @owner = Owner.find(params[:owner_id])
    @pet = Pet.new(pet_params)
    if @pet.save
      @owner.pets << @pet
      redirect_to [@owner, @pet]
    else
      render 'owners/show'
    end
  end

  private
  def pet_params
    params.require(:pet).permit(:name, :species)
  end
end
