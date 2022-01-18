class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true

  allowed_ratings = [0, 1, 2, 3, 4, 5]
  validates :rating, presence: true, inclusion: { in: allowed_ratings }
