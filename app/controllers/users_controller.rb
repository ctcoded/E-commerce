class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def show 
        user = User.find(params[:id])
        render json: user, status: :ok
    end 
    
    def create
        user = User.create(username: params[:username], password: params[:password])
        session[:user_id] = user.id
        item = Item.create(user_id: user.id, name: params[:name], description: params[:description], vendor: [:vendor], image: params[:image], on_hand: params[:on_hand], committed: params[:committed])
        render json: user, status: :created
    end
    
    private 
    
      def user_params
        params.permit(:username, :password, :name, :image, :description, :vendor, :on_hand, :committed, :total_sold)
      end 
    
end
