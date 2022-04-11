# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

place = Place.new(name: "Tokyo Tower", address: "Tokyo Tower", latitude: 35.658578, longitude: 139.745429)
place.save
place = Place.new(name: "The Best Spicy Ramen in Tokyo", address: "COUKI Soshigayaokura", latitude: 35.642693, longitude: 139.609022)
place.save
place = Place.new(name: "Nostalgic Tokyo", address: "Shinjuku Golden Gai", latitude: 35.69411, longitude: 139.70474)
place.save
place = Place.new(name: "Luxury Shopping", address: "Isetan Shinjuku", latitude: 35.69164, longitude: 139.70462)
place.save
place = Place.new(name: "Yayoi Kusama", address: "Yayoi Kusama Museum", latitude: 35.70321, longitude: 139.72653)
place.save
place = Place.new(name: "¥¥ MONEY ¥¥", address: "Minato City", latitude: 35.658100, longitude: 139.751500)
place.save