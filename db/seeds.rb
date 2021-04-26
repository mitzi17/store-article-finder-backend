# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
floorZ1 = Location.find_or_create_by(area: "floor-zone1")
floorZ2 = Location.find_or_create_by(area: "floor-zone2")
floorZ3 = Location.find_or_create_by(area: "floor-zone3")
stockA1 = Location.find_or_create_by(area: "stock-aisle1")
stockA2 = Location.find_or_create_by(area: "stock-aisle2")
stockA3 = Location.find_or_create_by(area: "stock-aisle3")

pinkDress = Article.find_or_create_by(name: "Pink Dress", number: 100100, price: 69.90, category: "dresses", size: "s,m,l", location: stockA2)
whiteDress = Article.find_or_create_by(name: "White Dress", number: 100200, price: 89.90, category: "dresses", size: "xs,s,m,l", location: floorZ1)
bluePants = Article.find_or_create_by(name: "Mom Fit Jeans", number: 100300, price: 49.90, category: "pants", size: "32-44", location: floorZ3)
blackPants = Article.find_or_create_by(name: "Black Dress Pants", number: 100400, price: 59.90, category: "pants", size: "34-42", location: floorZ2)
printShirt = Article.find_or_create_by(name: "Animal Print Shirt", number: 100500, price: 25.90, category: "shirts", size: "s,m,l", location: stockA1)
mickeyShirt = Article.find_or_create_by(name: "Mickey Tshirt", number: 100600, price: 299.90, category: "shirts", size: "s,m,l", location: floorZ3)
whiteShirt = Article.find_or_create_by(name: "Plain White Tshirt", number: 100700, price: 19.90, category: "shirts", size: "s,m,l", location: stockA1)

