require 'rails_helper'

describe "follows the path of signing in as a user" do
  it "follows user sign in process" do
    user = FactoryGirl.create(:user)
    visit root_path
    click_link 'Sign in'
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => user.password
    click_on 'Sign In'
    expect(page).to have_content 'welcome back!'
  end
end


# save_and_open_page
