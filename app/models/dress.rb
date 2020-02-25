class Dress < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :price, presence:true
  validates :category, presence:true
  validates :size, presence: true
  has_one_attached :photo
end
