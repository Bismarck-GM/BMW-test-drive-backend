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

ActiveRecord::Schema.define(version: 2021_05_30_105018) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.bigint "user_id", null: false
    t.bigint "dealership_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "car_id", null: false
    t.index ["car_id"], name: "index_appointments_on_car_id"
    t.index ["dealership_id"], name: "index_appointments_on_dealership_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "car_drives", force: :cascade do |t|
    t.bigint "car_id", null: false
    t.bigint "drive_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_id"], name: "index_car_drives_on_car_id"
    t.index ["drive_id"], name: "index_car_drives_on_drive_id"
  end

  create_table "car_families", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "img_thumb"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "shortname"
  end

  create_table "car_models", force: :cascade do |t|
    t.bigint "car_id", null: false
    t.bigint "car_family_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_family_id"], name: "index_car_models_on_car_family_id"
    t.index ["car_id"], name: "index_car_models_on_car_id"
  end

  create_table "car_paints", force: :cascade do |t|
    t.bigint "car_id", null: false
    t.bigint "paint_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_id"], name: "index_car_paints_on_car_id"
    t.index ["paint_id"], name: "index_car_paints_on_paint_id"
  end

  create_table "car_propulsors", force: :cascade do |t|
    t.bigint "car_id", null: false
    t.bigint "propulsor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_id"], name: "index_car_propulsors_on_car_id"
    t.index ["propulsor_id"], name: "index_car_propulsors_on_propulsor_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.integer "model_year"
    t.integer "hp"
    t.integer "mpg"
    t.float "accel"
    t.integer "msrp"
    t.string "img_thumb"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dealerships", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.string "city"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "drives", force: :cascade do |t|
    t.string "name"
    t.string "shorthand"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "paints", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.string "rgb"
    t.integer "price_mod"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "propulsors", force: :cascade do |t|
    t.string "name"
    t.string "energy"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.boolean "admin", default: false
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "appointments", "cars"
  add_foreign_key "appointments", "dealerships"
  add_foreign_key "appointments", "users"
  add_foreign_key "car_drives", "cars"
  add_foreign_key "car_drives", "drives", column: "drive_id"
  add_foreign_key "car_models", "car_families"
  add_foreign_key "car_models", "cars"
  add_foreign_key "car_paints", "cars"
  add_foreign_key "car_paints", "paints"
  add_foreign_key "car_propulsors", "cars"
  add_foreign_key "car_propulsors", "propulsors"
end
