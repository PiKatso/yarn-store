require 'rails_helper'

describe "follows the path of user leaving a comment on product" do

  it "follows user to products page" do
    user = FactoryGirl.create(:user)
    product = FactoryGirl.create(:product)
    visit root_path
    click_link 'Sign in'
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => user.password
    click_on 'Sign In'
    click_link 'Shop our Collection'
    expect(page).to have_content 'Products'
  end

  it "follows user to products detail page" do
    user = FactoryGirl.create(:user)
    product = FactoryGirl.create(:product)
    visit root_path
    click_link 'Sign in'
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => user.password
    click_on 'Sign In'
    click_link 'Shop our Collection'
    click_link product.name
    expect(page).to have_content product.name
  end

  it "follows user to leave comment on product" do
    user = FactoryGirl.create(:user)
    product = FactoryGirl.create(:product)
    visit root_path
    click_link 'Sign in'
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => user.password
    click_on 'Sign In'
    click_link 'Shop our Collection'
    click_link product.name
    click_link 'Leave a review'
    fill_in 'Author', :with => user.name
    fill_in 'Content', :with => "that there is some good yarn."
    click_on 'Create Review'
    expect(page).to have_content 'Review successfully added!'
  end

  it "follows user to leave comment on product" do
    user = FactoryGirl.create(:user)
    product = FactoryGirl.create(:product)
    visit root_path
    click_link 'Sign in'
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => user.password
    click_on 'Sign In'
    click_link 'Shop our Collection'
    click_link product.name
    click_link 'Leave a review'
    click_on 'Create Review'
    expect(page).to have_content 'Please fix these errors:'
  end

  it "follows user to edit their comment on product" do
    user = FactoryGirl.create(:user)
    product = FactoryGirl.create(:product)
    # review = FactoryGirl.build(:review)
    visit root_path
    click_link 'Sign in'
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => user.password
    click_on 'Sign In'
    click_link 'Shop our Collection'
    click_link product.name
    click_link 'Leave a review'
    fill_in 'Author', :with => user.name
    fill_in 'Content', :with => "that there is some good yarn."
    click_on 'Create Review'
    click_link 'Edit'
    fill_in 'Author', :with => 'wayne'
    click_on 'Update Review'
    expect(page).to have_content 'Review successfully updated!'
  end

end

# save_and_open_page
