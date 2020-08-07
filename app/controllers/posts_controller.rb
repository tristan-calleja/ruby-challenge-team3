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
    @post = Post.find(params[:id])
    @comment = Comment.new
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

  def followers
    # basically, this has nothing to do with any post and it's just here for convenience cos we don't want to
    # write another controller lol

    # @followers = [] # empty array to store

    # loop over current_user.followers
    # for each number in that array,
    # push the User.find(array number) into the above array

    
  end


  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:picture, :text, comments_ids: [])
  end
end
