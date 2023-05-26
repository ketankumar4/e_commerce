class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def show
    @order = Order.find(params[:id])
    @customer = Customer.find(params[:customer_id])
  end
  
  def create
    @customer = Customer.find_by(params[:customer_id])
    @order = @customer.orders.new(order_params)
    @order.save!
  end

  private

    def order_params
      params.require(:order).permit(:description, :product_id)
    end
end
