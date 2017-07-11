User.destroy_all
Product.destroy_all
Review.destroy_all

User.create!(
  name: 'admin',
  email: 'admin@admin.com',
  password: 'password',
  password_confirmation: 'password',
  admin: true
  )
User.create!(
  name: 'user',
  email: 'user@user.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false
  )

10.times do |i|
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
        user_id: User.all.sample.id
        )
  end
end

p "Created #{User.count} users"
p "Created #{Product.count} products"
p "Created #{Review.count} reviews"

# once initially set up/to edit must run 'rake db:setup'
# also 'rake db:test:prepare'
# rake db:seed
