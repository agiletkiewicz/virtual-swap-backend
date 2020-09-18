# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_18_024523) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.text "rules"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "pin"
  end

  create_table "items", force: :cascade do |t|
    t.string "title"
    t.string "size"
    t.text "notes"
    t.bigint "user_id", null: false
    t.string "image_url"
    t.index ["user_id"], name: "index_items_on_user_id"
  end

  create_table "takes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "item_id", null: false
    t.index ["item_id"], name: "index_takes_on_item_id"
    t.index ["user_id"], name: "index_takes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.bigint "event_id", null: false
    t.index ["event_id"], name: "index_users_on_event_id"
  end

  add_foreign_key "items", "users"
  add_foreign_key "takes", "items"
  add_foreign_key "takes", "users"
  add_foreign_key "users", "events"
end
