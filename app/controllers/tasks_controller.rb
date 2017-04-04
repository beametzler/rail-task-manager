class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    # this displays the generate new form to the user
    @task = Task.new
  end

  def create
    # this actually creates a new task
    @task = Task.new(user_params)
    @task.save
  end

  def edit
  end

  def update
    @task.update(user_params)
  end

  def destroy
    @task.destroy
  end

  private

  def user_params
    params.require(:task).permit(:name, :description)
  end


  def set_task
    @task = Task.find(params[:id])
  end
end
