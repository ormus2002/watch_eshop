class Product < ApplicationRecord
  validates :title, presence: true
  validates :price, presence: true

  has_many :related_products
  has_many :related, through: :related_products

  has_many :galleries

  belongs_to :category

  enum hit: { hit: 1, no_hit: 0 }
end
