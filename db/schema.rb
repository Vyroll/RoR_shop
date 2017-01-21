# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170120205608) do

  create_table "addresses", force: :cascade do |t|
    t.string "country",     null: false
    t.string "city",        null: false
    t.string "postal_code", null: false
    t.string "street",      null: false
  end

  create_table "amenities", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "order_elements", force: :cascade do |t|
    t.integer "id_order",   null: false
    t.integer "id_product", null: false
    t.integer "count",      null: false
    t.integer "price",      null: false
    t.integer "discount",   null: false
    t.index ["id_order"], name: "index_order_elements_on_id_order"
    t.index ["id_product"], name: "index_order_elements_on_id_product"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "id_user",     null: false
    t.integer "id_shipping", null: false
    t.integer "id_status",   null: false
    t.integer "discount",    null: false
    t.integer "id_address",  null: false
    t.index ["id_address"], name: "index_orders_on_id_address"
    t.index ["id_shipping"], name: "index_orders_on_id_shipping"
    t.index ["id_status"], name: "index_orders_on_id_status"
    t.index ["id_user"], name: "index_orders_on_id_user"
  end

  create_table "prodcuts", force: :cascade do |t|
    t.string  "name",        null: false
    t.string  "code",        null: false
    t.integer "stock",       null: false
    t.integer "id_category", null: false
    t.integer "price",       null: false
    t.index ["id_category"], name: "index_prodcuts_on_id_category"
  end

  create_table "shippings", force: :cascade do |t|
    t.integer "name",  null: false
    t.string  "price", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string  "first_name", null: false
    t.string  "last_name",  null: false
    t.string  "mail",       null: false
    t.string  "login",      null: false
    t.string  "password",   null: false
    t.integer "id_amenity", null: false
    t.integer "id_address", null: false
    t.index ["id_address"], name: "index_users_on_id_address"
    t.index ["id_amenity"], name: "index_users_on_id_amenity"
  end

end
