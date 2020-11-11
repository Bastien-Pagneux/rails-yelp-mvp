# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0458596687", category: "belgian"}
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St", phone_number: "0458556681", category: "italian" }
bocuse =  { name: "Frog restaurant", address: "3A Shoreditch High St", phone_number: "0458556657", category: "french" }
sushi_mania =  { name: "Sushi Mania", address: "6A Shoreditch High St", phone_number: "0418556688", category: "japanese" }
hong_kong =  { name: "Hong Kong", address: "8A Shoreditch High St", phone_number: "0458556683", category: "italian" }

[ dishoom, pizza_east, bocuse, sushi_mania, hong_kong ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"