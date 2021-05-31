# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
puts "Users have been reset." if User.count == 0

4.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.unique.last_name,
    bio: Faker::String.random(length: 50..150),
    image: Faker::LoremPixel.image(size: "500x500", is_gray: true, category: 'people'),
    email: Faker::Internet.unique.free_email,
    password_digest: "password"
  )
end