class Employee::DestinationsController < ApplicationController
    before_action :authenticate_employee!, only: [:new, :create]


   def new 

    @newdestination = Destination.new

   end 

   def index 

   end 

   def create 

    #@newdestination = Destination.create(destination_params)
    @newdestination = current_employee.destinations.create(destination_params)
    redirect_to employee_destination_path(@newdestination) 
   end 


   def show 
    @newdestination = Destination.find(params[:id])
   end 


   private 

   def destination_params
    params.require(:destination).permit(:destination, :departure_date, :arrival_date, :vessel_name)
   end 
end
