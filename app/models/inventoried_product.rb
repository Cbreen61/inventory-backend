class InventoriedProduct < ApplicationRecord
  belongs_to :product
  belongs_to :inventory
end
