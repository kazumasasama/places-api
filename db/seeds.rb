# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

place = Place.new(name: "Little Island", address: "Pier 55 at Hudson River Park Hudson River Greenway, NY 10014")
place.save
place = Place.new(name: "The Shed", address: "545 W 30th St, New York, NY 10001")
place.save
place = Place.new(name: "Chrysler Building", address: "405 Lexington Ave, New York, NY 10174")
place.save
place = Place.new(name: "Brooklyn Bridge", address: "Brooklyn Bridge, New York, NY 10038")
place.save