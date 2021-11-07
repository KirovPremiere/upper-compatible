class Item < ApplicationRecord
  belongs_to :genre
  has_many :comments
  has_many :images
  
  validates :name, :genre_id, presence: true
end
