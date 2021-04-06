class Inventory < ApplicationRecord
  belongs_to :account
  has_many :products, through: :inventoriedproducts
end
