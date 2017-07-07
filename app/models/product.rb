class Product < ApplicationRecord
  validates :name, :description, :price,
            :image, :material, :length,
            :weight, :color, :care, :presence => true

  validates :price, numericality: true, :presence => true
  has_many :reviews, dependent: :destroy

end
