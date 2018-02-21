class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    blog_title = params[:post][:title]
    blog_body = params[:post][:body]
    new_post = Post.new(title: blog_title, body: blog_body, user_id: current_user.id)
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

    new_blog_title = params[:post][:title]
    new_blog_body = params[:post][:body]

    post.title = new_blog_title
    post.body = new_blog_body
    post.save

    redirect_to post_path post
  end

  def destroy
    Post.find(params[:id]).destroy

    redirect_to posts_path
  end
end
