class UserController < ApplicationController
   
    def index
        @User = User.all
    end 

    def show
        @User = User.find(params[:id])
    end 
    


end
