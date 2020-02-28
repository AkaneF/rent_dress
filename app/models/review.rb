class Review < ApplicationRecord
  belongs_to :dress
  belongs_to :user
  validates :rating, presence: true
  validates :content, presence: true, length: { minimum: 10 }
end
