class Account < ApplicationRecord
  belongs_to :region
  has_many :inventories
  has_many :inventoriedproducts, through: :inventories
end
