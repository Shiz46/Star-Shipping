class Employee::DestinationsController < ApplicationController
    before_action :authenticate_employee!, only: [:new, :create]


   def new 

    @newdestinations = Destination.new

   end 

   def index 
    @newdestinations = Destination.all
   end 

   def create 
    @newdestinations = current_employee.destinations.create(destination_params)
    redirect_to employee_destinations_path
   end 


   def about 
   end 


   def edit 
    @newdestinations = Destination.find(params[:id])
   end 

   def update 
    @newdestinations = Destination.find(params[:id])
    @newdestinations.update_attributes(destination_params) 
    redirect_to employee_destinations_path
   end 

   def destroy 
        @newdestinations  =  Destination.find(params[:id])
        @newdestinations.destroy
        redirect_to employee_destinations_path
   end 

   private 

   def destination_params
    params.require(:destination).permit(:destination, :departure_date, :arrival_date, :vessel_name,)
   end 
end
