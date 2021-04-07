class Region < ApplicationRecord
    has_many :accounts
    has_many :inventories, through: :accounts
    has_many :inventoriedproducts, through: :inventories

end
