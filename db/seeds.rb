# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
kamala = Hero.create(name: 'Kamala Khan', super_name: 'Ms. Marvel')
squirrel = Hero.create(name: 'Doreen Green', super_name: 'Squirrel Girl')
gwen = Hero.create(name: 'Gwen Stacy', super_name: 'Spider-Gwen')

strength_power = Power.create(name: 'Super Strength', description: 'Gives the wielder super-human strengths')
flight_power = Power.create(name: 'Flight', description: 'Gives the wielder the ability to fly through the skies at supersonic speed')

HeroPower.create(hero: kamala, power: strength_power, strength: 'Strong')
HeroPower.create(hero: gwen, power: flight_power, strength: 'Average')
