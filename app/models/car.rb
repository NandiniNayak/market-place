class Car < ApplicationRecord
    belongs_to :seller
    belongs_to :buyer , optional: true
    
    has_many_attached :pictures
 
    def convert_price
         price/1000
    end
end
