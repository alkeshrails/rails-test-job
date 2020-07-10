# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Option.create(name: "Color").option_values.create([{name: "Blue"}, {name: "Red"}])
Option.create(name: "Size").option_values.create([{name: "Small"}, {name: "Medium"}, {name: "Large"}])
Option.create(name: "Pattern").option_values.create([{name: "Striped"}, {name: "Solid"}])
Option.create(name: "Shape").option_values.create([{name: "Oval"}, {name: "Round"}])
