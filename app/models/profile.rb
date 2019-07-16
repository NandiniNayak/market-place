class Profile < ApplicationRecord
  belongs_to :user
  has_one :buyer
  has_one :seller
end
