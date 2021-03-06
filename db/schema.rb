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

ActiveRecord::Schema.define(version: 20161215230824) do

  create_table "order_items", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "order_id"
    t.decimal  "unit_price",  precision: 12, scale: 3
    t.integer  "quantity"
    t.decimal  "total_price", precision: 12, scale: 3
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["product_id"], name: "index_order_items_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.decimal  "subtotal",   precision: 12, scale: 3
    t.decimal  "tax",        precision: 12, scale: 3
    t.decimal  "shipping",   precision: 12, scale: 3
    t.decimal  "total",      precision: 12, scale: 3
    t.integer  "user_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "prod_type"
    t.string   "caliber"
    t.string   "grade"
    t.string   "bullet_weight"
    t.decimal  "cost_per_round",   precision: 12, scale: 3
    t.decimal  "price_per_round",  precision: 12, scale: 3
    t.string   "rounds_per_box"
    t.decimal  "box_price",        precision: 12, scale: 3
    t.text     "description"
    t.decimal  "weight_per_round"
    t.string   "brand"
    t.string   "sku"
    t.string   "quantity_avail"
    t.boolean  "active"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "cust_number"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "phone_number"
    t.string   "street1"
    t.string   "street2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "billing_street1"
    t.string   "billing_street2"
    t.string   "billing_city"
    t.string   "billing_state"
    t.string   "billing_zip"
    t.decimal  "account_credit"
    t.date     "last_shipment"
    t.decimal  "money_spent"
    t.boolean  "restricted"
    t.string   "shipping_zone"
    t.decimal  "lifetime_spent"
    t.string   "interval"
    t.date     "start_date"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
