class TasksController < ApplicationController
  before_action :find_task, only: [:show, :edit, :update, :destroy]
  
  def index
    @tasks = Task.all
  end 

  def new
    @task = Task.new
    task.save
  end

  def create
    @task = Task.create(whitelisted_params)
    redirect_to @task 
  end

  def show 
  end 

  def edit 
  end 

  def update
    @task.update_attributes(whitelisted_params)
    redirect_to @task
  end

  def destroy
    @task.destroy

    redirect_to tasks_path
  end

  private

  def find_task
    @task = Task.find_by(id: params[:id])
  end

  def whitelisted_params
    params.require(:task).permit(:name, :description, :time, :price).merge(user_id)
  end 
end 