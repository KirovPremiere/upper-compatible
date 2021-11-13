class BigFoursController < ApplicationController
  def show
    @big_four = BigFour.find(params[:id])
    @genres = Genre.big_fours
  end
end
