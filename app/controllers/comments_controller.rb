class CommentsController < ApplicationController
  before_action :authenticate_customer!
  
  def new
    @comment = Comment.new
  end
  
  def create
    @comment = Comment.new(comment_params)
    @comment.customer_id = current_customer.id
    @comment.item_id = params[:item_id]
    @comment.score = Language.get_data(comment_params[:opinion])
    if @comment.save
      redirect_to item_path(params[:item_id])
    else
      render :new
    end
  end
  
  def edit
    @item = Item.find(params[:item_id])
    @comment = Comment.find(params[:id])
  end
  
  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    @comment.score = Language.get_data(comment_params[:opinion])
    @comment.save
    redirect_to item_path(params[:item_id])
  end
  
  
  private
  def comment_params
    params.require(:comment).permit(:opinion, :price, :point, :image, :place, :score)
  end

end
