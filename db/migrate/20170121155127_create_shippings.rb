class CreateShippings < ActiveRecord::Migration[5.0]
  def change
    create_table :shippings do |t|
      t.integer :name, :null => false
      t.string :price, :null => false
    end
  end
end
