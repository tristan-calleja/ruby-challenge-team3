class PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @user = User.find(params[:user_id])
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  def create
   @post = Post.new(post_params)
   @user = User.find(params[:user_id])
   @post["user_id"] = @user.id
    if @post.save
      redirect_to user_posts_path
    else
      render :new
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:picture, :text)
  end
end
