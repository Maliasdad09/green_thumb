class TasksController < ApplicationController
  before_action :find_plant
  before_action :find_task, only: [:show, :edit, :update, :destroy]
  
  def index
    @tasks = @plant.tasks
  end

  def show
  end

  def new
    @task = @plant.tasks.build
  end

  def edit
  end

  def create
    @task = @plant.tasks.build(whitelisted_params)

    if @task.save
      redirect_to([@task.plant, @task], notice: 'Task was successfully created.')
    else
      render action: 'new'
    end
  end

  def update
    if @task.update_attributes(whitelisted_params)
      redirect_to([@task.plant, @task], notice: 'Task was successfully updated.')
    else
      render action: 'edit'
    end
  end

  def destroy
    @task.destroy

    redirect_to plant_tasks_url(@plant)
  end

  private 

  def find_plant
    @plant = Plant.find(params[:plant_id])
    
  end

  def find_task
    @task = @plant.tasks.find(params[:id])
  end 

  def whitelisted_params
    params.require(:task).permit(:name, :description, :time, :price)
  end 

end
