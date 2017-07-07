require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many :reviews }

  it { should validate_presence_of :name }
  it { should validate_presence_of :email }
  it { should validate_confirmation_of :password }

  it 'proves factory girl works' do
    user = FactoryGirl.build(:user)
    user.name.should eq "coco"
  end

  it 'proves factory girl works for admin' do
    admin = FactoryGirl.build(:admin)
    admin.name.should eq "duke"
  end

end
