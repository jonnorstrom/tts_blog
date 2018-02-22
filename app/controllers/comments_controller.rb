class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new  
  end

  def create
    @post = Post.find(params[:post_id])
    new_comment = @post.comments.new(comment_params)
    new_comment.user_id = current_user.id
    new_comment.save
    redirect_to post_path @post
  end

  private

    def comment_params
      params.require(:comment).permit(:content)
    end
end
