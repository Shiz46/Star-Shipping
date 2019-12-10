class Destination < ApplicationRecord
    belongs_to :employee
    geocoded_by :destination
    after_validation :geocode
    
    validates :destination, presence: true 
    validates :departure_date, presence: true 
    validates :arrival_date, presence: true 
    validates :vessel_name, presence: true

    #def destination 
        #[city, state, country].compact.join(',')
   # end 

end
