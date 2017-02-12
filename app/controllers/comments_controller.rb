class CommentsController < ApplicationController

  def create
    @roast = Roast.find(params[:roast_id])
    @comment = @roast.comments.create(comment_params)
    redirect_to roast_path(@roast)
  end
private
def comment_params
  params.require(:comment).permit(:body)
end
end
