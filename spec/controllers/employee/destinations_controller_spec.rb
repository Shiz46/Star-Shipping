require 'rails_helper'

RSpec.describe Employee::DestinationsController, type: :controller do
    describe "destinations#index action" do 
        it "should successfully show the page" do 
            get :index 
            expect(response).to have_http_status(:success)
        end  
    end 

    describe "grams#new action" do 
        it "shoud successfully show the new form" do 
            get :new
            expect(response).to have_http_status(:success)
        end 

    end


    describe "grams#create action" do 
        it "should successfully create a new destination in our database" do 
            post :create, params: { destination:  { message: 'Let go!' } }
            expect(response).to redirect_to employee_destination_path

            destination = Destination.last
            expect(destination.message).to eq("Let go!")

        end 
    end 

end
