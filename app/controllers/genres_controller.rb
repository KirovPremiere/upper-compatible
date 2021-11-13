class GenresController < ApplicationController
  def index
    @big_fours = BigFour.all
    @genres = Genre.big_fours
  end
  
  def show
    @genre = Genre.find(params[:id])
    @items = @genre.items
  end
  
  
  
end
