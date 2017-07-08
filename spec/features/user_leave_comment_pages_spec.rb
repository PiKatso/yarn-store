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
    # fill_in 'Email', :with => user.email
    # fill_in 'Password', :with => user.password
    # click_on 'Sign In'
    expect(page).to have_content 'Products'
  end

end
