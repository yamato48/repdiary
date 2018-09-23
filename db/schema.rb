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

ActiveRecord::Schema.define(version: 2018_09_18_151128) do

  create_table "eats", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "worm"
    t.integer "cricket"
    t.integer "redroach"
    t.integer "dubia"
    t.integer "mouse"
    t.integer "artifical"
    t.integer "vegetable"
    t.integer "fruit"
    t.integer "bird"
    t.integer "egg"
    t.integer "other"
    t.bigint "record_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_id"], name: "index_eats_on_record_id"
  end

  create_table "records", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "memo"
    t.integer "fece"
    t.integer "clean"
    t.integer "handling"
    t.integer "shed"
    t.integer "bath"
    t.float "tall"
    t.float "weight"
    t.datetime "day", null: false
    t.bigint "reptile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reptile_id"], name: "index_records_on_reptile_id"
  end

  create_table "reptiles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "birthday"
    t.datetime "comeday"
    t.string "image"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_reptiles_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "eats", "records"
  add_foreign_key "records", "reptiles"
  add_foreign_key "reptiles", "users"
end
