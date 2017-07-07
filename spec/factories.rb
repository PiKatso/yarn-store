FactoryGirl.define do

  factory(:user) do
    name('coco')
    email('coco@gmail.com')
    password('password')
    password_confirmation('password')
    admin(false)
  end

  factory(:admin, class: User) do
    name('duke')
    email('duke@gmail.com')
    password('password')
    password_confirmation('password')
    admin(true)
  end

  factory(:product) do
    name('stupify ribbons')
    description('this beautiful yarn will stupify you with luxurious ribbons and Harry fibers.')
    price(25.00)
    image('http://cdn.lionbrand.com/media/catalog/product/cache/1/image/340x270/9df78eab33525d08d6e5fb8d27136e95/5/9/595-203-deepbluesea.jpg')
    material('riboon, nylon and acrylic blen')
    length('275 yards')
    weight('worsted')
    color('midnight blue')
    care('hand wash cold')
  end

  factory(:review) do
    content('I liked this yarn, it was fiborous')
    author('coco')
    association :user_id, factory: :user
    association :product_id, factory: :product
  end

end
