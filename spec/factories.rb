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

  # factory(:review) do
  #   content('I liked this yarn, it was fiborous')
  #   author('coco')
  #   password('password')
  #   password_confirmation('password')
  #   admin(true)
  # end

end
