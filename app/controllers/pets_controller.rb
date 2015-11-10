class PetsController < ApplicationController
  def show
    @owner = Owner.find(params[:owner_id])
    @pet = Pet.find(params[:id])
  end
end
