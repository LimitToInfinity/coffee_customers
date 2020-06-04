# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

starbucks = Shop.create({ name: "Starbucks", phone_number: 5557779999 })

americano = Coffee.create({ name: "Americano", price: 100.72, shop: starbucks })
medium_roast = Coffee.create({ name: "Medium Roast", price: 3.50, shop: starbucks })