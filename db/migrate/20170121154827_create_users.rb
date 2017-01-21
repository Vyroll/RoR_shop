class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.string :mail, :null => false
      t.string :login, :null => false
      t.string :password, :null => false
      t.belongs_to :amenity, index: true, foreign_key: true
      t.belongs_to :address, index: true, foreign_key: true
      t.timestamps
    end
  end
end
