class Item < ApplicationRecord
  belongs_to :genre
  has_many :comments
  attachment :image
  
  validates :name, :genre_id, :image_id, :introduction, presence: true
end
