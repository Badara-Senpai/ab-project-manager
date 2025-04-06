class StatusChangesController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    previous_status = @project.status
    new_status = params[:new_status]

    if previous_status != new_status
      @project.status_changes.create(previous_status: previous_status, new_status: new_status, user: current_user)
      @project.update(status: new_status)

      render turbo_stream: [
        turbo_stream.replace(
          "conversation-history", partial: "projects/conversation_history",
          locals: { project: @project }
        ),
        turbo_stream.replace(
          "project-header", partial: "projects/project_header",
          locals: { project: @project }
        )
      ]
    else
      redirect_to @project, notice: "Status unchanged."
    end
  end
end
