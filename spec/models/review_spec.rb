require 'rails_helper'

describe Review do
  it { should validate_presence_of :author}
  it { should validate_presence_of :content }

  it { should belong_to :product }
  it { should belong_to :user }
  it { should validate_length_of(:content).is_at_least(10) }
  it { should validate_length_of(:content).is_at_most(200) }

  it 'proves factory girl works for review relationship' do
    user = FactoryGirl.build(:user)
    review = FactoryGirl.build(:review)
    review.user_id.should eq user.id
  end

  it 'proves factory girl works for product relationship' do
    product = FactoryGirl.build(:product)
    review = FactoryGirl.build(:review)
    review.product_id.should eq product.id
  end
end
