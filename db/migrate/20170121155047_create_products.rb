class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name, :null => false
      t.string :code, :null => false
      t.integer :stock, :null => false
      t.belongs_to :category, index: true, foreign_key: true
      t.integer :price, :null => false
    end
  end
end
