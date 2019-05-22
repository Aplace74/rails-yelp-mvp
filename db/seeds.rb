# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |n|
  Restaurant.create!(name: "restaurant #{n}", address: "#{n} rue de machin", category: 'chinese')
end

Restaurant.all.each do |r|
  10.times do |n|
    Review.create!(content: "c'est nul #{n}", rating: n % 5, restaurant: r)
  end
end
