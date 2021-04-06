class CreateInventories < ActiveRecord::Migration[6.1]
  def change
    create_table :inventories do |t|
      t.string :name
      t.date :date
      t.belongs_to :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
