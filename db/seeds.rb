# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sin = Airport.create(code: "SIN")
icn = Airport.create(code: "ICN")
# pek = Airport.create(code: "PEK")

flight1 = Flight.create(departure_airport_id: sin.id, 
  arrival_airport_id: icn.id, duration: 360, start: DateTime.new(2021, 12, 24, 10, 0, 0))
flight2 = Flight.create(departure_airport_id: sin.id, 
  arrival_airport_id: icn.id, duration: 360, start: DateTime.new(2021, 12, 25, 17, 30, 0))
flight3 = Flight.create(departure_airport_id: sin.id, 
  arrival_airport_id: icn.id, duration: 360, start: DateTime.new(2021, 12, 26, 23, 30, 0))
flight4 = Flight.create(departure_airport_id: sin.id, 
  arrival_airport_id: icn.id, duration: 360, start: DateTime.new(2021, 12, 25, 20, 30, 0))

flight5 = Flight.create(departure_airport_id: icn.id, 
  arrival_airport_id: sin.id, duration: 360, start: DateTime.new(2021, 12, 24, 10, 0, 0))
flight6 = Flight.create(departure_airport_id: icn.id, 
  arrival_airport_id: sin.id, duration: 360, start: DateTime.new(2021, 12, 25, 17, 30, 0))
flight7 = Flight.create(departure_airport_id: icn.id, 
  arrival_airport_id: sin.id, duration: 360, start: DateTime.new(2021, 12, 26, 23, 30, 0))
flight8 = Flight.create(departure_airport_id: icn.id, 
  arrival_airport_id: sin.id, duration: 360, start: DateTime.new(2021, 12, 25, 20, 30, 0))


