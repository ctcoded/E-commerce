class InventoriesController < ApplicationController

    def index
        inventories = Inventory.all
        render json: inventories
    end

    def show
        inventory = Inventory.find(params[:id])
        render json: inventory, status: :ok
    end

    # def updated_at
    #     inventory = Inventory.find(params[:id])
    #     inventory.udpate(inventory_params)
    #     render json: inventory, status: :accepted
    # end

    # def create
    #     inventory = Inventory.create(inventory.params)
    #     render json: inventory, status: :created
    # end
    
    # private

    # def inventory_params
    #     params.permit(:business_name)
    # end

end
