Region
Has_many :accounts 
:name 


Account
Has_many :inventories
has_many :products through: inventories
belongs_to :region
:name -string
:city - string
:grade - string



Inventory
Belongs_to  :account
has_many :products through : inventory_products
Name - string 
Products - string [array]
Date-  range 
Total_coat - float


Products
Many to many :inventory_products
Name - string 
Price - float
Category  -string 

inventoried_product
Belongs_to :product
Belongs_to ::inventory
inventory_id - integer 
product_id - integer 
Quantity - float 
Total - float 
