require 'rails_helper'

describe "follows the path of signing in" do

  it "follows user sign in process" do
    user = FactoryGirl.create(:user)
    visit root_path
    click_link 'Sign in'
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => user.password
    click_on 'Sign In'
    expect(page).to have_content 'welcome back!'
  end

  it "follows user sign in process with no user info" do
    visit root_path
    click_link 'Sign in'
    click_on 'Sign In'
    expect(page).to have_content 'There was a problem signing in. Please try again.'
  end
  
end


# save_and_open_page
