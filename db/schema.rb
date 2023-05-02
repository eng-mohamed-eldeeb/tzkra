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

ActiveRecord::Schema[7.0].define(version: 2023_05_02_190614) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "jti", null: false
    t.string "img_url"
    t.text "bio"
    t.string "location"
    t.string "name"
    t.index ["email"], name: "index_companies_on_email", unique: true
    t.index ["jti"], name: "index_companies_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_companies_on_reset_password_token", unique: true
  end

  create_table "concerts", force: :cascade do |t|
    t.bigint "singer_id", null: false
    t.bigint "venue_id", null: false
    t.date "date"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer "platinum_ticket_price"
    t.integer "gold_ticket_price"
    t.integer "siliver_ticket_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["singer_id"], name: "index_concerts_on_singer_id"
    t.index ["venue_id"], name: "index_concerts_on_venue_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "concert_id", null: false
    t.string "seat_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["concert_id"], name: "index_reservations_on_concert_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "singers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "jti", null: false
    t.string "img_url"
    t.string "name"
    t.text "bio"
    t.string "music_genre"
    t.index ["email"], name: "index_singers_on_email", unique: true
    t.index ["jti"], name: "index_singers_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_singers_on_reset_password_token", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "jti", null: false
    t.string "img_url"
    t.boolean "is_admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["jti"], name: "index_users_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "venues", force: :cascade do |t|
    t.string "location"
    t.string "img_url"
    t.string "name"
    t.bigint "company_id", null: false
    t.integer "platinaum_seat_count"
    t.integer "gold_seats_count"
    t.integer "siliver_seats_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_venues_on_company_id"
  end

  add_foreign_key "concerts", "singers"
  add_foreign_key "concerts", "venues"
  add_foreign_key "reservations", "concerts"
  add_foreign_key "reservations", "users"
  add_foreign_key "venues", "companies"
end
