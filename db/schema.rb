# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150615133003) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "groups", force: :cascade do |t|
    t.string   "group_name"
    t.string   "season"
    t.string   "year"
    t.string   "gender"
    t.string   "skill_level"
    t.string   "age_category"
    t.integer  "roster_max"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
  end

  add_index "groups", ["user_id"], name: "index_groups_on_user_id", using: :btree

  create_table "locations", force: :cascade do |t|
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.datetime "match_datetime"
    t.string   "match_loc_name"
    t.text     "match_note"
    t.string   "match_opp"
    t.string   "match_outcome"
    t.integer  "match_score"
    t.string   "match_loc_address"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "user_id"
  end

  create_table "playergroups", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "playergroups", ["group_id"], name: "index_playergroups_on_group_id", using: :btree
  add_index "playergroups", ["player_id"], name: "index_playergroups_on_player_id", using: :btree

  create_table "playermatches", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "match_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "playermatches", ["match_id"], name: "index_playermatches_on_match_id", using: :btree
  add_index "playermatches", ["player_id"], name: "index_playermatches_on_player_id", using: :btree
  add_index "playermatches", ["user_id"], name: "index_playermatches_on_user_id", using: :btree

  create_table "players", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "user_name"
    t.string   "password"
    t.string   "photo"
    t.string   "team_name"
    t.string   "role"
    t.string   "gender"
    t.string   "age_category"
    t.string   "skill_level"
    t.integer  "record_ind"
    t.integer  "record_team"
    t.string   "phone_num"
    t.string   "phone_type"
    t.string   "email"
    t.string   "day_pref1"
    t.string   "time_pref1"
    t.string   "day_pref2"
    t.string   "time_pref2"
    t.string   "password_digest"
    t.string   "remember_token"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "player_id"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["player_id"], name: "index_users_on_player_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "groups", "users"
  add_foreign_key "playergroups", "groups"
  add_foreign_key "playergroups", "players"
  add_foreign_key "playermatches", "matches"
  add_foreign_key "playermatches", "players"
  add_foreign_key "playermatches", "users"
  add_foreign_key "users", "players"
end
