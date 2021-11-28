class GenresController < ApplicationController
  def index
    @big_fours = BigFour.all
  end
  
  def show
    @genre = Genre.find(params[:id])
    @items = @genre.items.order("name")
    
    #グラフの描画
    @result = []
    @items.each do |item|
      return if item.comments.blank?
      
      avg_price = item.comments.average(:price).to_i
      avg_point = item.comments.average(:point).round(2)
      @result.push({name: item.name, data: [[avg_point,avg_price]]})
    end
    
  end
  
end
