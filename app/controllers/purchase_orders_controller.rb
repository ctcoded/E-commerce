class PurchaseOrdersController < ApplicationController

    def index
        purchase_orders = PurchaseOrder.all
        render json: purchase_orders
    end

    def show
        purchase_order = PurchaseOrder.find(params[:id])
        render json: purchase_order, status: :ok
    end

end
