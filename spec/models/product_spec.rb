require 'rails_helper'

describe Product do
  it { should validate_presence_of :name }
  it { should validate_presence_of :price }
  it { should validate_presence_of :description }
  it { should validate_presence_of :image }
  it { should validate_presence_of :material }
  it { should validate_presence_of :length }
  it { should validate_presence_of :weight }
  # it { should validate_presence_of :color }
  # it { should validate_presence_of :care }

  it { should have_many :reviews }
  it { should validate_numericality_of(:price)}
end
