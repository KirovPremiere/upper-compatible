class Genre < ApplicationRecord
  validates :name, presence: true
  belongs_to :big_four
  has_many :items
end
