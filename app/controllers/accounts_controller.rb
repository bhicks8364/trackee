class AccountsController < ApplicationController

    def index
        @accounts = Company.all
    end

    def show
       @account = Account.find(params[:id]) 
    end
    

end
