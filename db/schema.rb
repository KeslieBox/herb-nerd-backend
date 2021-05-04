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

ActiveRecord::Schema.define(version: 2021_05_03_235605) do

  create_table "herbs", force: :cascade do |t|
    t.string "name"
    t.string "common_name"
    t.text "medicinal_uses"
    t.text "history"
    t.text "spiritual_uses"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "properties", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "qualities", force: :cascade do |t|
    t.integer "herb_id", null: false
    t.integer "property_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["herb_id"], name: "index_qualities_on_herb_id"
    t.index ["property_id"], name: "index_qualities_on_property_id"
  end

  add_foreign_key "qualities", "herbs"
  add_foreign_key "qualities", "properties"
end
