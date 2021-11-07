class Customer < ApplicationRecord
  has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  enum sex: { men: 0, women: 1, others: 2}
  validates :name, presence: true
  validates :email, presence: true
  validates :sex, presence: true
end
