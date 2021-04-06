class CreateInventoriedProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :inventoried_products do |t|
      t.belongs_to :product, null: false, foreign_key: true
      t.belongs_to :inventory, null: false, foreign_key: true
      t.float :quantity
      t.float :cost

      t.timestamps
    end
  end
end
