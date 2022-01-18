class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true, length: { minimum: 0 }
  validates :rating, presence: true, length: { minimum: 0 }, numericality: true, inclusion: { in: [0, 1, 2, 3, 4, 5] }
end