class Review < ApplicationRecord
  belongs_to :dress
  validates :rating, presence: true
  validates :content, presence: true
end
