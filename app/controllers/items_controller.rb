class ItemsController < ApplicationController
  before_action :authenticate_customer!,except: [:show]

  def show
    @item = Item.find(params[:id])
    @comments = Comment.where(item_id: @item.id)
  end

  def new
    @item = Item.new
    @big_fours = BigFour.all
    @genres = Genre.all
  end

  def create
    @item = Item.new(item_params)
    @item.customer_id = current_customer.id
    if @item.save
      redirect_to item_path(@item)
    else
      @big_fours = BigFour.all
      @genres = Genre.all
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])
    @big_fours = BigFour.all
    @genres = Genre.all
    gon.genre_id = @item.genre.id
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to item_path(item_params)
  end

  private
  def item_params
    params.require(:item).permit(:name, :image, :genre_id, :introduction, :customer_id)
  end

end
