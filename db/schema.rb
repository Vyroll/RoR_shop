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

ActiveRecord::Schema.define(version: 20170122164201) do

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
    t.integer  "order_id"
    t.integer  "product_id"
    t.integer  "count",      null: false
    t.integer  "price",      null: false
    t.integer  "discount",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_elements_on_order_id"
    t.index ["product_id"], name: "index_order_elements_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "shipping_id"
    t.integer  "status_id"
    t.integer  "discount",    null: false
    t.integer  "address_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["address_id"], name: "index_orders_on_address_id"
    t.index ["shipping_id"], name: "index_orders_on_shipping_id"
    t.index ["status_id"], name: "index_orders_on_status_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string  "name",        null: false
    t.string  "code",        null: false
    t.integer "stock",       null: false
    t.integer "category_id"
    t.integer "price",       null: false
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  create_table "shippings", force: :cascade do |t|
    t.integer "name",  null: false
    t.string  "price", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "amenity_id"
    t.integer  "address_id"
    t.index ["address_id"], name: "index_users_on_address_id"
    t.index ["amenity_id"], name: "index_users_on_amenity_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
