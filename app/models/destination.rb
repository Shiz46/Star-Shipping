class Destination < ApplicationRecord
    belongs_to :employee
    
    validates :destination, presence: true 
    validates :departure_date, presence: true 
    validates :arrival_date, presence: true 
    validates :vessel_name, presence: true

end
