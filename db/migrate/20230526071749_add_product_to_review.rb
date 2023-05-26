class AddProductToReview < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :product, index: true
  end
end
