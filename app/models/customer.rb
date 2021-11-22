class Customer < ApplicationRecord
  has_many :comments
  has_many :favorites
  has_many :items
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :name, presence: true
  validates :email, presence: true
  validates :sex, presence: true
end
