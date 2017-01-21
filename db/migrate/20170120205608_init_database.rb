class InitDatabase < ActiveRecord::Migration[5.0]
	def change
		create_table :addresses do |t|
			t.string :country, :null => false
			t.string :city, :null => false
			t.string :postal_code, :null => false
			t.string :street, :null => false
		end

		create_table :amenities do |t|
			t.string :name, :null => false
		end

		create_table :users do |t|
			t.string :first_name, :null => false
			t.string :last_name, :null => false
			t.string :mail, :null => false
			t.string :login, :null => false
			t.string :password, :null => false
			t.integer :id_amenity, :null => false, index: true
			t.integer :id_address, :null => false, index: true
		end
		add_foreign_key :users, :amenities, column: :id_amenity
		add_foreign_key :users, :addresses, column: :id_address

		create_table :categories do |t|
			t.string :name, :null => false
		end

		create_table :prodcuts do |t|
			t.string :name, :null => false
			t.string :code, :null => false
			t.integer :stock, :null => false
			t.integer :id_category, :null => false, index: true
			t.integer :price, :null => false
		end
		add_foreign_key :prodcuts, :categories, column: :id_category


		create_table :shippings do |t|
			t.integer :name, :null => false
			t.string :price, :null => false
		end


		create_table :statuses do |t|
			t.string :name, :null => false
		end


		create_table :orders do |t|
			t.integer :id_user, :null => false, index: true
			t.integer :id_shipping, :null => false, index: true
			t.integer :id_status, :null => false, index: true
			t.integer :discount, :null => false
			t.integer :id_address, :null => false, index: true
		end
		add_foreign_key :orders, :users, column: :id_user
		add_foreign_key :orders, :shippings, column: :id_shipping
		add_foreign_key :orders, :statuses, column: :id_status
		add_foreign_key :orders, :addresses, column: :id_address

		create_table :order_elements do |t|
			t.integer :id_order, :null => false, index: true
			t.integer :id_product, :null => false, index: true
			t.integer :count, :null => false
			t.integer :price, :null => false
			t.integer :discount, :null => false
		end
		add_foreign_key :order_elements, :orders, column: :id_order
		add_foreign_key :order_elements, :prodcuts, column: :id_product
	end
end