# frozen_string_literal: true

class TasksController < ApplicationController
  before_action :find_tasks, only: %i[edit update show destroy]
  def index; end

  def show; end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(tasks_params)
    if @task.save
      redirect_to @task
    else
      render 'new'
    end
  end

  def edit; end

  def update; end

  def destroy; end

  private

  def tasks_params
    params_require(:task).permit(:title, :description, :company, :url)
  end

  def find_task
    @task = Task.find(params[:id])
  end
end
