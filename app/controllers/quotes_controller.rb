class QuotesController < ApplicationController
   # before action :authenticate_user!, only: [:new, :create]
    def new
        @quote = Quote.new
    end 

    def index 
        @quote = Quote.all
    end


    def create 
        @quote = Quote.create(quote_params)
        redirect_to quotes_path
    end 

    private 

    def quote_params
        params.require(:quote).permit(:name, :email, :phone_number, :destination, :description)
    end 
end
