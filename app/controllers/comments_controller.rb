class CommentsController < ApplicationController

  def create
    @roast = Roast.find(params[:roast_id])
    @comment = @roast.comments.create(comment_params)
    redirect_to roast_path(@roast)
  end

  def destroy
    @roast = Roast.find(params[:roast_id])
    @comment = @roast.comments.find(params[:id])
    @comment.destroy
    redirect_to @roast, :notice => "Roast Deleted"
  end

private
def comment_params
  params.require(:comment).permit(:body)
end
end
