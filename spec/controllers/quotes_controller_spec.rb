require 'rails_helper'

RSpec.describe QuotesController, type: :controller do
    describe "quotes#index action" do 
        it "should successfully show the page" do
            get :index
            expect(response).to have_http_status(:success)
        end 
    end 


    describe "quotes#new action" do 
     it "should successfully show the new form " do 
        get :new
        expect(response).to have_http_status(:success)
     end 
    end 

    #describe "quotes#create action" do
        #it "should successfully create a new quote in our database" do 
            #post :create, :params =>  { :quote => { :name => 'Any name'} { :email => 'any email'} { :phone_number => 'phone number'} { :destination => 'destination'} { :description => 'description'} }
            #expect(response).to redirect_to quotes_path

            #quote = Quote.last
            #expect(quote.name).to eq('')
        #end 
    #end 
end
