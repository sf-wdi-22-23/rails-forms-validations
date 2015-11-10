class OwnersController < ApplicationController
  def index
    # provide new Owner object for new Owner form partial
    @owner = Owner.new
    # make all users available to index view
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
    if @owner.save
      redirect_to @owner
    else
      @owners = Owner.all
      render 'index'
      # render 'new'
    end
  end

  private
  def owner_params
    params.require(:owner).permit(:name)
  end
end
