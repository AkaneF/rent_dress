class Dress < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, presence:true
  validates :category, presence:true
  validates :size, presence: true
  has_one_attached :photo
end
