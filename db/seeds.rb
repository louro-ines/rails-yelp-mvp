# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating 5 fake restaurants...'
dishoom = {
  name: 'Dishoom',
  address: '7 Boundary St, London E2 7JE',
  phone_number: rand(10**10).to_s.rjust(10, '0'),
  category: %w[chinese italian japanese french belgian].sample
}

pizza_east = {
  name: 'Pizza East',
  address: '56A Shoreditch High St, London E1 6PQ',
  phone_number: rand(10**10).to_s.rjust(10, '0'),
  category: %w[chinese italian japanese french belgian].sample
}

dimsum = {
  name: 'DimSum',
  address: 'Amoreiras, Lisboa',
  phone_number: rand(10**10).to_s.rjust(10, '0'),
  category: 'chinese'
}

local = {
  name: 'Local - Your Healthy Kitchen',
  address: 'Rua Rodrigues Sampaio, Lisboa',
  phone_number: rand(10**10).to_s.rjust(10, '0'),
  category: %w[chinese italian japanese french belgian].sample
}

sa_morais = {
  name: 'Sushi dos Sá Morais',
  address: 'Rua Castilho, Lisboa',
  phone_number: rand(10**10).to_s.rjust(10, '0'),
  category: 'japanese'
}

[dishoom, pizza_east, dimsum, local, sa_morais].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts 'Finished!'
