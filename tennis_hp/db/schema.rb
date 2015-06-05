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

ActiveRecord::Schema.define(version: 20150605014350) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
  end

  create_table "playermatches", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "match_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "playermatches", ["match_id"], name: "index_playermatches_on_match_id", using: :btree
  add_index "playermatches", ["player_id"], name: "index_playermatches_on_player_id", using: :btree

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

  add_foreign_key "playermatches", "matches"
  add_foreign_key "playermatches", "players"
end