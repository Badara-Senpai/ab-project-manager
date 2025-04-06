class CommentsController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    @comment = @project.comments.build(comment_params)
    @comment.user = current_user

    if @comment.save
      render turbo_stream: turbo_stream.replace(
        "conversation-history",
        partial: "projects/conversation_history",
        locals: { project: @project }
      )
    else
      redirect_to @project, alert: "Unable to add comment."
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
