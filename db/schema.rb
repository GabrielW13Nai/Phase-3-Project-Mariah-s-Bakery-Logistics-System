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

ActiveRecord::Schema.define(version: 2023_04_10_122731) do

  create_table "orders", force: :cascade do |t|
    t.string "name_of_order"
    t.datetime "time_of_order"
    t.integer "delivery_time_in_minutes"
    t.integer "rider_id"
    t.integer "team_id"
  end

  create_table "riders", force: :cascade do |t|
    t.string "name"
    t.integer "id_no"
    t.string "nationality"
    t.integer "phone_number"
    t.string "plate_number"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "location"
  end

end
