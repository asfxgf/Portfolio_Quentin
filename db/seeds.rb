# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Debut de seed"

AdminUser.create!(email: 'admind@example.com', password: 'passwordd', password_confirmation: 'passwordd') if Rails.env.development?
User.create!(email: 'deleglise.quentin@hotmail.fr', password: '123456', admin: true)
User.create!(email: '2leglise.quentin@gmail.com', password: '123456', admin: false)

puts "fin de seed"
