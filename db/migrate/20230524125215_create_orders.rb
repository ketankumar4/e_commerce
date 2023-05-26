class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :description
      t.belongs_to :product
      t.belongs_to :customer

      t.timestamps
    end
  end
end
