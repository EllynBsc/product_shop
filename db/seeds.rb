# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all

p "starting"

product1 = Product.create!(title: "wood straws", unit_price: 5, description: "amazing", stock: 7)

product2 = Product.create!(title: "bamboo straws", unit_price: 4, description: "ecological as fuck", stock: 10)

product3 = Product.create!(title: "metal straws", unit_price: 6, description: "cold", stock: 12)

product4 = Product.create!(title: "fake plastic straws", unit_price: 14, description: "plastikkk?", stock: 22)

p "seed finished!"
