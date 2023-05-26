class ProductsController < ApplicationController
  def new
    @product = Product.new
  end
  
  def create
    @seller = Seller.find_by(params[:seller_id])
    @product = @seller.products.new(product_params)
    @product.save!
  end

  def show
    @product = Product.find(params[:id])
    @seller = Seller.find(params[:seller_id])
  end

  def destroy
    @seller = Seller.find_by(params[:seller_id])
    @product = @seller.products.find_by(params[:id])
    @product.destroy!
    # redirect_to seller_path(@seller), status: :see_other
  end

  private

    def product_params
      params.require(:product).permit(:name, :attachment, :product_category_id)
    end

end
