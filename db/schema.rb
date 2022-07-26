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

ActiveRecord::Schema.define(version: 2022_07_23_172848) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "consignees", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "poc_name"
    t.string "poc_email"
    t.string "poc_phone"
    t.string "office_location"
    t.string "shipper_consignee_relationships"
    t.string "payment_type"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_consignees_on_user_id"
  end

  create_table "shipments", force: :cascade do |t|
    t.string "origin"
    t.string "destination"
    t.string "transport_mode"
    t.string "commodity"
    t.integer "reference_number"
    t.bigint "shipper_id", null: false
    t.bigint "consignee_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["consignee_id"], name: "index_shipments_on_consignee_id"
    t.index ["shipper_id"], name: "index_shipments_on_shipper_id"
    t.index ["user_id"], name: "index_shipments_on_user_id"
  end

  create_table "shippers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "poc_name"
    t.string "poc_email"
    t.string "poc_phone"
    t.string "office_location"
    t.string "shipper_consignee_relationships"
    t.string "payment_type"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_shippers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "consignees", "users"
  add_foreign_key "shipments", "consignees"
  add_foreign_key "shipments", "shippers"
  add_foreign_key "shipments", "users"
  add_foreign_key "shippers", "users"
end
