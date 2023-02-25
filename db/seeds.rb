require 'faker'

# Create some users and products to associate with reviews
puts "🌱 Seeding data..."
10.times do
  User.create(name: Faker::Name.name)
  Product.create(
    name: Faker::Commerce.product_name,
    price: Faker::Commerce.price(range: 0..100.0, as_string: true),
    description: Faker::Lorem.paragraph(sentence_count: 5)
  )
end

# Create some reviews associated with users and products
20.times do
  user = User.order('RANDOM()').first
  product = Product.order('RANDOM()').first
  Review.create(user: user, product: product, star_rating: rand(1..5), comment: Faker::Lorem.sentence)
end
puts "🌱 Done seeding!"

# user = User.first
# product = Product.first

# review = Review.create!(
#   star_rating: 4,
#   comment: "I really enjoyed this product!",
#   user: user,
#   product: product
# )

# user = User.find(1) # Find a user with ID 1 (or use any other valid ID)
# review = Review.new(content: "Great product!", user: user)
# review.save

# # Update an existing review with a valid user_id
# review = Review.find(2) # Find a review with ID 2 (or use any other valid ID)
# user = User.find(3) # Find a user with ID 3 (or use any other valid ID)
# review.update(content: "Could be better", user: user)

# puts "🌱 Seeding data..."

# # run a loop 50 times
# 50.times do
#   # create a game with random data
#   game = Game.create(
#     title: Faker::Game.title,
#     genre: Faker::Game.genre,
#     platform: Faker::Game.platform,
#     price: rand(0..60) # random number between 0 and 60
#   )

#   # create between 1 and 5 reviews for each game
#   rand(1..5).times do
#     Review.create(
#       score: rand(1..10),
#       comment: Faker::Lorem.sentence,
#       game_id: game.id # use the ID (primary key) of the game as the foreign key
#     )
#   end
# end

# puts "🌱 Done seeding!"