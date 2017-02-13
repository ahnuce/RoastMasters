class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_comment, only: [:show, :edit, :update, :destroy, :upvote, :downvote]

  def index
    @comments = Comment.all.order(:cached_votes_up => :desc)
  end
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
#upvote_from user
#downvote_from user
  def upvote
    @comment.upvote_from current_user
    redirect_to roasts_path
  end

  def
    @comment.downvote_from current_user
    redirect_to roasts_path
  end

private
def set_comment
  @comment = Comment.find(params[:id])
end
def comment_params
  params.require(:comment).permit(:body)
end
end
