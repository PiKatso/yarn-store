class Product < ApplicationRecord
  validates :name, :description, :price, :presence => true
  validates :price, numericality: true, :presence => true
  has_many :reviews, dependent: :destroy

end
