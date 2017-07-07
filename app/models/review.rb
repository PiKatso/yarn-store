class Review < ApplicationRecord
  validates :author, :content, :presence => true

  validates_length_of :content, maximum: 200, message: "is too long (maximum is 200 characters)"

  validates_length_of :content, minimum: 10, message: "is too short (minimum is 10 characters)"

  belongs_to :product
  belongs_to :user
end
