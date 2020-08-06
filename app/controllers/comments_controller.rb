class CommentsController < ApplicationController
  before_action :new_comment, only: [:new, :create]
  before_action :set_comment, only: [:show, :edit, :update]

  def index
    @comments = Comment.all
  end

  def new
    #@comment = @post.comments.build
    @comment = Comment.new
    @posts = Post.all
  end

  def create
    # @comment = @post.comments.build(comment_params)
    @comment = Comment.new(comment_params)
    @comment["post_id"] = @post.id
    @comment["user_id"] = current_user.id
    p @comment.inspect

    if @comment.save
      # redirect_to user_post_path(@post)
      redirect_to post_path(@comment.post_id)
    else   
      # render :new
      redirect_to post_path(@post.id)
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
  end

  private

  def new_comment
    @post = Post.find(params[:post_id])
    # @user = User.find(params[:user_id])
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:text, :user_id, :post_id)
  end
end
