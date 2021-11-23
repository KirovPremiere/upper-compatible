class Comment < ApplicationRecord
  belongs_to :item
  belongs_to :customer
  has_many :favorites
  attachment :image
  
  def favorited_by?(customer)
    favorites.where(customer_id: customer.id).exists?
  end
  
  validates :opinion, presence: true
  validates :place, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
  validates :point, presence: true, inclusion: { in: 0..100 }
end
