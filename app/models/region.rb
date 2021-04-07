class Region < ApplicationRecord
    has_many :accounts
    has_many :inventories, through: :accounts
    has_many :recordeds, through: :inventories

    def self.arr_to_json
        self.all.map do |r|
            r.instance_to_json
        end
    end

    def instance_to_json
        {   id: self.id,
            name: self.name,
            accounts: self.accounts.arra_to_json
        }
    end

end
