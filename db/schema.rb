# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20181103121514) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "description"
    t.text     "specifications"
    t.text     "area"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "size"
    t.string   "color_light"
    t.integer  "price"
    t.integer  "min_order"
    t.text     "description"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size",    limit: 8
    t.datetime "avatar_updated_at"
    t.integer  "subcategory_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "led_count"
  end

  add_index "products", ["subcategory_id"], name: "index_products_on_subcategory_id", using: :btree

  create_table "shipments", force: :cascade do |t|
    t.string   "name"
    t.string   "size"
    t.string   "led_count"
    t.string   "color_light"
    t.integer  "price"
    t.integer  "subcategory_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "shipments", ["subcategory_id"], name: "index_shipments_on_subcategory_id", using: :btree

  create_table "subcategories", force: :cascade do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.text     "specifications"
  end

  add_index "subcategories", ["category_id"], name: "index_subcategories_on_category_id", using: :btree

  add_foreign_key "products", "subcategories"
  add_foreign_key "shipments", "subcategories"
  add_foreign_key "subcategories", "categories"
end
