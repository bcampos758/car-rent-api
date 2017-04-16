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

ActiveRecord::Schema.define(version: 20170413213739) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "reservation_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["reservation_id"], name: "index_accounts_on_reservation_id", using: :btree
    t.index ["user_id"], name: "index_accounts_on_user_id", using: :btree
  end

  create_table "reservations", force: :cascade do |t|
    t.string   "pickUp"
    t.string   "dropOff"
    t.string   "location"
    t.string   "isOpen"
    t.string   "confirmation"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "units", force: :cascade do |t|
    t.string   "mileage"
    t.boolean  "isAvailable"
    t.string   "vin"
    t.string   "license"
    t.integer  "vehicle_id"
    t.integer  "reservation_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "location"
    t.index ["reservation_id"], name: "index_units_on_reservation_id", using: :btree
    t.index ["vehicle_id"], name: "index_units_on_vehicle_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "dob"
    t.string   "phone"
    t.string   "insurance"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "license"
    t.boolean  "isEmployee"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "manufacturer"
    t.string   "model"
    t.string   "img"
    t.string   "year"
    t.string   "vehicleType"
    t.integer  "capacity"
    t.integer  "quantity"
    t.decimal  "rate"
    t.string   "transmission"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "accounts", "reservations"
  add_foreign_key "accounts", "users"
  add_foreign_key "units", "reservations"
  add_foreign_key "units", "vehicles"
end
