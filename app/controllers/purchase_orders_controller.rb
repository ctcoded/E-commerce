class PurchaseOrdersController < ApplicationController

    def index
        purchase_orders = PurchaseOrder.all
        render json: purchase_orders
    end

    def show
        purchase_orders = PurchaseOrder.find_by(user_id: params[:id])
        render json: purchase_orders, status: :ok
    end

end
