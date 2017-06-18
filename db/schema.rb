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

ActiveRecord::Schema.define(version: 20170618035103) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "messages", force: :cascade do |t|
    t.integer "user_id"
    t.integer "poker_table_id"
    t.string "content"
  end

  create_table "poker_tables", force: :cascade do |t|
    t.string "name"
    t.integer "creator_id"
    t.integer "turns"
    t.integer "pot"
    t.integer "dealer_button_position"
    t.integer "small_blind"
    t.integer "big_blind"
    t.integer "current_turn_position"
    t.string "deck_id"
    t.jsonb "board"
    t.jsonb "players"
    t.jsonb "player_hand"
    t.text "active_players", default: [], array: true
    t.text "folded_players", default: [], array: true
    t.boolean "dealt", default: false
    t.string "winner"
    t.integer "current_bet"
    t.jsonb "winning_hand"
    t.string "phase"
  end

  create_table "user_poker_tables", force: :cascade do |t|
    t.integer "user_id"
    t.integer "poker_table_id"
    t.string "hand"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "play_chips", default: 3000
    t.integer "current_table"
  end

end
