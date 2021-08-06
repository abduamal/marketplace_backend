require 'faker'
require 'awesome_print'

Product.destroy_all
puts "Products have been reset." if Product.count == 0

Shop.destroy_all
puts "Shops have been reset." if Shop.count == 0

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

Shop.create!(
  name: "Beauty Bar",
  industry: "Retail"
)

Shop.create!(
  name: "Tech Talk",
  industry: "Technology"
)

Product.create!(
  shop_id: 1,
  name: "Black Soap",
  price: 20,
  description: "2lb brick of black soap produced by mothers in Nigeria.",
  quantity: 20000
)

Product.create!(
  shop_id: 1,
  name: "Shea Butter",
  price: 40,
  description: "5lb brick of shea butter produced by mothers in Ghana.",
  quantity: 20000
)

Product.create!(
  shop_id: 2,
  name: "Translating Device",
  price: 7000,
  description: "Patented device that translates up to 70 languages and dialects.",
  quantity: 100000
)
