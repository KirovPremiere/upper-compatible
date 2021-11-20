class FavoritesController < ApplicationController
  before_action :authenticate_customer!
  
  def create
    comment = Comment.find(params[:comment_id])
    favorite = current_customer.favorites.new(comment_id: comment.id)
    favorite.save
  end

  def destroy
    comment = Comment.find(params[:comment_id])
    favorite = current_customer.favorites.find_by(comment_id: comment.id)
    favorite.destroy
  end
  
end
