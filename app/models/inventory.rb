class Inventory < ApplicationRecord
  belongs_to :account
  has_many :recordeds
  has_many :products, through: :recordeds

  def self.arri_to_json
    self.all.map do |i|
        i.instance_to_json
    end
  end

  def instance_to_json
      {   id: self.id,
          name: self.name,
          date: self.date,
          inventory_items: self.recordeds.arrr_to_json
      }
  end


end
