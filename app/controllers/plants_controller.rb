class PlantsController < ApplicationController
  before_action :find_plant, only: [:show, :edit, :update, :destroy]

  def index
    @plants = Plant.all
  end 

  def new 
    @plant = Plant.new
  end 

  def create
    @plant = Plant.create(whitelisted_params)
    redirect_to @plant
  end 

  def show 
  end

  def edit 
  end 

  def update 
    @plant.update_attributes(whitelisted_params)
    redirect_to plant
  end 

  def destroy
    @plant.destroy

    redirect_to plants_path
  end 

  private

  def find_plant 
    @plant = Plant.find_by(id: params[:id])
  end 

  def whitelisted_params
    params.require(:plant).permit(:name, :medium, :type_of_fertilizer).merge(user_id: current_user.id)
  end 
end