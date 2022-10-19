# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_10_13_221711) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.bigint "vendor_id", null: false
    t.string "street_1"
    t.string "street_2"
    t.string "city"
    t.string "state"
    t.integer "zip_code"
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["vendor_id"], name: "index_addresses_on_vendor_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.bigint "address_id"
    t.string "phone"
    t.string "fax"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address_id"], name: "index_contacts_on_address_id"
  end

  create_table "inventories", force: :cascade do |t|
    t.string "business_name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_inventories_on_user_id"
  end

  create_table "items", force: :cascade do |t|
    t.bigint "inventory_id", null: false
    t.bigint "purchase_order_id"
    t.string "name"
    t.string "description"
    t.bigint "vendor_id"
    t.string "image"
    t.integer "on_hand"
    t.integer "committed"
    t.integer "total_sold"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["inventory_id"], name: "index_items_on_inventory_id"
    t.index ["purchase_order_id"], name: "index_items_on_purchase_order_id"
    t.index ["vendor_id"], name: "index_items_on_vendor_id"
  end

  create_table "purchase_orders", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "order_notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_purchase_orders_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vendors", force: :cascade do |t|
    t.string "vendor_name"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_vendors_on_user_id"
  end

  add_foreign_key "addresses", "vendors"
  add_foreign_key "inventories", "users"
  add_foreign_key "items", "inventories"
  add_foreign_key "purchase_orders", "users"
end
