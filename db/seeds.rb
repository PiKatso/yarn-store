Product.destroy_all
Review.destroy_all

2.times do |i|
  user = User.create!(
    name: Faker::TwinPeaks.character,
    email: Faker::Internet.email,
    password: Faker::Internet.password(8)
  )
  5.times do |i|
    product = Product.create!(
      name: Faker::Coffee.blend_name,
      description: "it's a yarn",
      price: Faker::Number.decimal(2),
      image: "https://d30y9cdsu7xlg0.cloudfront.net/png/18327-200.png",
      material: "yarn",
      length: "250 yards",
      weight: "sport",
      color: Faker::Color.color_name,
      care: "dry clean only"
      )
    5.times do |i|
      review = product.reviews.create!(
          author: Faker::TwinPeaks.character,
          content: Faker::Lorem.characters(50),
          user_id: Faker::Number.between(1, 2)
          )
    end
  end
end

p "Created #{Product.count} products"

# once initially set up/to edit must run 'rake db:setup'
# also 'rake db:test:prepare'
# rake db:seed
