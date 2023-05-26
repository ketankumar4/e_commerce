class ReviewsController < ApplicationController
  def new
    @order = Order.new
  end
  
  def create
    @customer = Customer.find_by(params[:customer_id])
    @review = @customer.reviews.new(review_params)
    @review.save!
  end

  private

    def review_params
      params.require(:review).permit(:detail, :product_id)
    end
end
