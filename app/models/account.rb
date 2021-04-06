class Account < ApplicationRecord
  belongs_to :region
  has_many :inventories
end
