class ItemsController < ApplicationController
  
  def show
    @item = Item.find(params[:id])
    @comments = Comment.all
  end
  
  def new
    @item = Item.new
    @big_fours =BigFour.all
    
  end
  
  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to item_path(item_params)
  end
  
  def edit
    @item = Item.find(params[:id])
    @genres = Genre.all
  end
  
  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to item_path(item_params)
  end
  
  private
  def item_params
    params.require(:item).permit(:name, :image_id, :genre_id, :introduction)
  end
  
end
