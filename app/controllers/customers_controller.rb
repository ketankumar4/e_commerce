class CustomersController < ApplicationController
  before_action :authenticate_seller!
  def index
    @customer = Customer.all
    @products = Product.all
  end

  def show
    @customer = Customer.find(params[:id])
  end
end
