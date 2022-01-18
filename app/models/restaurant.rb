class Restaurant < ApplicationRecord
  has_many :reviews
  
  validates :name, presence: true
  validates :address, presence: true

  allowed_categories = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, presence: true, inclusion: { in: allowed_categories }
end
