class Product < ApplicationRecord
    has_many :inventories, through: :recordeds
    has_many :recordeds
end
