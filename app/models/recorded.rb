class Recorded < ApplicationRecord
  belongs_to :inventory
  belongs_to :product

  def self.arrr_to_json
    self.all.map do |r|
        r.instance_to_json
    end
  end

  def instance_to_json
      {   id: self.id,
          product_name: self.product.name,
          product_price: self.product.price,
          quantity: self.quantity,
          total_cost: self.cost
      }
  end

end
