class CreateOrderElements < ActiveRecord::Migration[5.0]
  def change
    create_table :order_elements do |t|
      t.belongs_to :order, index: true, foreign_key: true
      t.belongs_to :product, index: true, foreign_key: true
      t.integer :count, :null => false
      t.integer :price, :null => false
      t.integer :discount, :null => false
      t.timestamps
    end
  end
end
