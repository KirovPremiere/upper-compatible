class BigFoursController < ApplicationController
  def index
    @big_fours = Big_four.all
  end
  
  def show
    @big_four = Big_four.find(params[:id])
    @genres = @big_four.genres
  end
end
