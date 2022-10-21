class UsersController < ApplicationController
    # before_action :authorize, only: [:show]
  
    # def show
    #     user = User.find_by(id: session[:user_id])
    #     render json: user
    # end

    def show
      user = User.find_by(params[:id])
      render json: user.purchase_orders, status: :ok
    
    end
   
    def create
        user = User.create(username: params[:username], password: params[:password])
        session[:user_id] = user.id
        render json: user, status: :created
    end
   
    private
      # def authorize
      #   return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
      # end
   
      def user_params
        params.permit(:username, :password)
      end
   
 end
 