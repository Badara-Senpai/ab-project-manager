class StatusChangesController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    previous_status = @project.status
    new_status = params[:new_status]

    if previous_status != new_status
      @project.status_changes.create(previous_status: previous_status, new_status: new_status)
      @project.update(status: new_status)
    else
      redirect_to @project, notice: "Status unchanged."
    end
  end
end
