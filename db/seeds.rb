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
      image: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&ved=0ahUKEwi9k_m95ffUAhUBcSYKHStRBNIQjRwIBw&url=https%3A%2F%2Fwww.iconfinder.com%2Ficons%2F778756%2Fball_hand_made_hobby_knitting_sweater_yarn_icon&psig=AFQjCNFBnKVYK2mF4x-FpGrU81pvmBNs2w&ust=1499538221514676",
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
