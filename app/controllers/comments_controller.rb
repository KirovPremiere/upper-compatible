class CommentsController < ApplicationController
  before_action :authenticate_customer!
  
  def new
    @comment = Comment.new
  end
  
  def create
    @comment = Comment.new(comment_params)
    @comment.customer_id = current_customer
    @comment.save
    redirect_to item_comments_path
  end
  
  def edit
    @comment = Comment.find(params[:id])
  end
  
  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to item_comment_path(@comment.id)
  end
  
  
  private
  def comment_params
    params.require(:comment).permit(:opinion, :price, :point)
  end

end
