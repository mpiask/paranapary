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

ActiveRecord::Schema.define(version: 20170826165250) do

  create_table "herbs", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.string "description"
    t.string "image"
    t.boolean "base"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "base_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.integer "quantity"
    t.integer "herb_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "jar_id"
    t.index ["herb_id"], name: "index_ingredients_on_herb_id"
    t.index ["jar_id"], name: "index_ingredients_on_jar_id"
  end

  create_table "jars", force: :cascade do |t|
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "order_id"
    t.index ["order_id"], name: "index_jars_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "surname"
    t.string "street"
    t.string "zipcode"
    t.string "city"
    t.string "country"
    t.string "phone"
    t.boolean "paid", default: false
    t.boolean "confirmed", default: false
    t.decimal "value"
  end

end
