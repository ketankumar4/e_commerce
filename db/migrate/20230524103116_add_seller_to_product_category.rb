class AddSellerToProductCategory < ActiveRecord::Migration[7.0]
  def change
    add_reference :product_categories, :seller, index: true
  end
end
