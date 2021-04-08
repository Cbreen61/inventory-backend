class Account < ApplicationRecord
  belongs_to :region
  has_many :inventories
  has_many :recordeds, through: :inventories


  def self.arra_to_json
    self.all.map do |a|
        a.instance_to_json
    end
  end

  def instance_to_json
      {   region_id: self.region.id,
          id: self.id,
          name: self.name,
          city: self.city,
          inventories: self.inventories.arri_to_json
      }
  end

end
