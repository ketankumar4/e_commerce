class ProductCategoriesController < ApplicationController
  def new
    @product = Product.new
  end
  
  def create
    @seller = Seller.find_by(params[:seller_id])
    @product = @seller.product_categories.new(productcat_params)
    @product.save!
  end

  private

    def productcat_params
      params.require(:product_category).permit(:name)
    end

end
