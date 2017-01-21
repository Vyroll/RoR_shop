class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :shipping, index: true, foreign_key: true
      t.belongs_to :status, index: true, foreign_key: true
      t.integer :discount, :null => false
      t.belongs_to :address, index: true, foreign_key: true
      t.timestamps
    end
  end
end
