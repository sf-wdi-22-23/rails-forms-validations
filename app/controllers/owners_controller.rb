class OwnersController < ApplicationController
  def index
    @owners = Owner.all
  end

  def show
    @owner = Owner.find(params[:id])
    @pet = Pet.new
  end

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owner_params)
  end

  private
  def owner_params
    params.require(:owner).permit(:name)
  end
end
