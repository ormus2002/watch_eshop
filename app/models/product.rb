class Product < ApplicationRecord
    validates :title, presence: true
    validates :price, presence: true

    enum hit: { hit: 1, no_hit: 0 }
end
