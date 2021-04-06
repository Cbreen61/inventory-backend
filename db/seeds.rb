# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Region.create(name: "MSD")
Account.create(name:"Middle brook highschool", city:"mississippi", grade:"k-12", region_id:"1")
Inventory.create(name:"May monthly", date:"05/01/2021", account_id: "1")
Product.create(name:"apple" ,price: "0.50", category:"fruit")
InventoriedProduct.create(inventory_id: "1", product_id: "1", quantity: "4", cost: "2.00")
