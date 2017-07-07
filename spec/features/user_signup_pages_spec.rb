require 'rails_helper'

describe "follows the path of signing up as a user" do
  it "registers new user though signing up" do
    visit root_path
    click_link 'Sign up'
    fill_in 'user_name', :with => 'Chanel'
    fill_in 'user_email', :with => 'Chanel@gmail.com'
    fill_in 'user_password', :with => 'password'
    fill_in 'user_password_confirmation', :with => 'password'
    click_on 'Sign Up'
    expect(page).to have_content 'User registration successful'
  end

  it "gives error when no name is entered" do
    visit root_path
    click_link 'Sign up'
    click_on 'Sign Up'
    expect(page).to have_content 'There was a problem with your registration'
  end
end
