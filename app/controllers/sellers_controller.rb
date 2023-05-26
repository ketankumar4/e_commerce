class SellersController < ApplicationController
  before_action :authenticate_seller!
  def homepage
    # @current_user ||= Seller.find_by(id: session[:seller_id])
  end

  def index
    @seller = Seller.all
  end

  def show
    @seller = Seller.find(params[:id])
  end

  # def new
  #   @seller = Seller.new
  # end
end
