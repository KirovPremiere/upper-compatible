class BigFoursController < ApplicationController
  def show
    @big_four = BigFour.find(params[:id])
  end
end
