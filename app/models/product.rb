class Product < ApplicationRecord
    has_many :inventories, through: :inventoriedproducts
end
