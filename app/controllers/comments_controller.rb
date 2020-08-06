class CommentsController < ApplicationController
  before_action :new_comment, only: [:new, :create]
  before_action :set_comment, only: [:show, :edit, :update]
  def index
  end

  def new
    @comment = @post.comments.build
  end

  def create
    @comment = @post.comments.build(comment_params)

    if @comment.save
      redirect_to user_post_path(@post)
    else   
      render :new
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
