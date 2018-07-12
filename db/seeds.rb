# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
product_1 = Product.create(name: "RPiV3", price: 1400, amount: 10)
product_2 = Product.create(name: "Switch L3", price: 15400, amount: 10)
product_3 = Product.create(name: "Arduino Uno R3", price: 890, amount: 10)

cat_1 = Category.create(name: "Electronics")
cat_2 = Category.create(name: "Computers")

product_1.categories << cat_1
product_1.categories << cat_2

product_2.categories << cat_1

product_3.categories << cat_1

