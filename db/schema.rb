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

ActiveRecord::Schema.define(version: 2019_04_24_201838) do

  create_table "counselors", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.integer "dni"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pathfinders", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.datetime "birthday"
    t.integer "dni"
    t.integer "unit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unit_id"], name: "index_pathfinders_on_unit_id"
  end

  create_table "units", force: :cascade do |t|
    t.string "name"
    t.integer "counselor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["counselor_id"], name: "index_units_on_counselor_id"
  end

end
