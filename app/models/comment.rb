class Comment < ApplicationRecord
  belongs_to :item
  belongs_to :customer
  
  validates :opinion, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
  validates :point, presence: true, inclusion: { in: 0..100 }
end
