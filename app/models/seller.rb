class Seller < ApplicationRecord
  belongs_to :profile
  has_and_belongs_to_many :buyers
  has_many :cars

  # has_many :cars
  # has_many :sellers, through: :cars

  # has_many :cars
  # has_many :buyers, through: :cars

  has_many :reviews
end
