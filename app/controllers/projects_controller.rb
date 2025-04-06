class ProjectsController < ApplicationController
  before_action :set_project, only: [:show]
  def index
    @projects = Project.all.order(created_at: :desc)
  end

  def show
    @comment = Comment.new
  end

  def new
    @project = Project.new
  end

  def create
    @project = current_user.projects.new(project_params)

    if @project.save
      redirect_to @project, notice: "Project was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def project_params
    params.require(:project).permit(:name, :description, :status)
  end

  def set_project
    @project = Project.find(params[:id])
  end
end
