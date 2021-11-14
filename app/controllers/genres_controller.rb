class GenresController < ApplicationController
  def index
    @big_fours = BigFour.all
  end
  
  def show
    @genre = Genre.find(params[:id])
    @items = @genre.items
  end
  
  
  
end
