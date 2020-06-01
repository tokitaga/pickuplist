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

ActiveRecord::Schema.define(version: 2020_05_28_153607) do

  create_table "pickuplists", force: :cascade do |t|
    t.string "vin"
    t.date "date"
    t.string "place"
    t.integer "list_number"
    t.integer "year"
    t.string "maker"
    t.string "grade"
    t.string "model"
    t.integer "cc"
    t.integer "mileage"
    t.string "color"
    t.float "score"
    t.integer "c_and_f"
    t.integer "purchase"
    t.string "country"
    t.integer "result"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
