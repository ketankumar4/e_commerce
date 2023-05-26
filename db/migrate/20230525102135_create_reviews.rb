class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :detail
      t.belongs_to :customer

      t.timestamps
    end
  end
end
