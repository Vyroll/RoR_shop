class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :country, :null => false
      t.string :city, :null => false
      t.string :postal_code, :null => false
      t.string :street, :null => false
    end
  end
end
