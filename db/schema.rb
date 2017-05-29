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

ActiveRecord::Schema.define(version: 20170529202127) do

  create_table "pets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "age"
    t.string "sex"
    t.string "size"
    t.string "city"
    t.string "zip"
    t.text "address1"
    t.text "address2"
    t.string "phone"
    t.string "mix"
    t.text "description"
    t.string "email"
    t.string "animal"
    t.string "photo"
    t.string "breed"
  end

  create_table "selected_pets", force: :cascade do |t|
    t.integer "user_id"
    t.integer "pet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pet_id"], name: "index_selected_pets_on_pet_id"
    t.index ["user_id"], name: "index_selected_pets_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "session_id"
    t.string "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
