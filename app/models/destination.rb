class Destination < ApplicationRecord
    has_many :employee_id
    
    validates :destination, presence: true 
    validates :departure_date, presence: true 
    validates :arrival_date, presence: true 
    validates :vessel_name, presence: true

end
