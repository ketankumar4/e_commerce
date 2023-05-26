class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string   :attachment
      t.string   :name
      t.belongs_to :seller
      t.belongs_to :product_category
      t.timestamps
    end
  end
end
