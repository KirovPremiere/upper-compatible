class SearchesController < ApplicationController
  def search
    @value = params["search"]["value"]
    @items = search_for_item(@value)
    @genres = Genre.where("name LIKE ?", "%#{@value}%")
  end

  private
  def search_for_item(value)
    Item.where("name LIKE ?", "%#{value}%")
  end
  def search_for_genre(value)
    Genre.where("name LIKE ?", "%#{value}%")
  end
end
