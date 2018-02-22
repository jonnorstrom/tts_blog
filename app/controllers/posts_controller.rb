class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    new_post = current_user.posts.new(post_params)
    new_post.save
    redirect_to post_path new_post
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    post.save
    redirect_to post_path post
  end

  def destroy
    Post.find(params[:id]).destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
