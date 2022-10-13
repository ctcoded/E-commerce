class SessionsController < ApplicationController

    def create 
        user = User.find_by(username: params[:username])
            render json: user, status: :ok
       
       
    end
 
  
    def destroy
        session.delete(:user_id) 
    end
   
  
 end
 
