class CommentsController < ApplicationController
  before_action :set_project

  def create
    comment = @project.comments.new(comment_params)

    if comment.save
      redirect_to @project, notice: "Comment was successfully created."
    else
      redirect_to @project
    end
  end

  private

    def set_project
      @project = Project.find(params[:project_id])
    end

    def comment_params
      params.require(:comment).permit(:content)
    end

end
