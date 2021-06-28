# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Product.destroy_all
puts "Products have been reset." if Product.count == 0

# Shop.destroy_all
# puts "Shops have been reset." if Shop.count == 0

# User.destroy_all
# puts "Users have been reset." if User.count == 0
#
# 4.times do
#   User.create!(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.unique.last_name,
#     bio: Faker::String.random(length: 50..150),
#     image: Faker::LoremPixel.image(size: "500x500", is_gray: true, category: 'people'),
#     email: Faker::Internet.unique.free_email,
#     password_digest: "password"
#   )
# end

# 2.times do
#   Shop.create!(
#     user_id: Faker::Number.between(from: User.first.id, to: User.last.id),
#     name: Faker::Company.unique.name,
#     industry: Faker::Company.industry
#   )
# end

Product.create!(
  user_id: 2,
  shop_id: 1,
  name: "Spanish Translating Device",
  price: 5000,
  description: "This product translates all spanish words and sound effects",
  quantity: 200
)

Product.create!(
  user_id: 2,
  shop_id: 2,
  name: "Too Fly. An Autobiography.",
  price: 5,
  description: "This novel is written by me, Ramiro Waelchi",
  quantity: 20000
)
