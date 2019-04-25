# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


Product.create!(name: "Aguila",
               description: "La cervezita mas rico del mundo",
               url: "http....",
              )

Product.create!(name: "Pilsen",
               description: "Una cerveza sabrosita hecho en Medallo",
               url: "http....",
              )

50.times do |i|
  Product.create!(name: Faker::Beer.name,
                 description: Faker::Beer.style,
                 url: "http....",
                )
  # id = i + 1
end
