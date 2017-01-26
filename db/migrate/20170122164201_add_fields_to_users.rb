class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_belongs_to :users, :amenity, index: true, foreign_key: true, default: 1
    add_belongs_to :users, :address, index: true, foreign_key: true
  end
end
