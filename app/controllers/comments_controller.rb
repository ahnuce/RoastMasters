class CommentsController < ApplicationController
before_action :find_roast
  def create
    @comment = @roast.comments.create(params[:comment].permit[:content])
# so we can check the comments from each user
    @comment.user_id = current_user.id
    @comment.save
#error check
      if @comment.save
        redirect_to roast_path(@roast)
      else
        render 'new'
      end
  end

  private
    def find_roast
      @roast = Roast.find(params[:roast_id])
    end

end
