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

ActiveRecord::Schema.define(version: 2019_03_29_183314) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.bigint "user_id"
    t.string "balance"
    t.string "starting_balance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "bets", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "game_id"
    t.float "wager"
    t.string "currency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "odds"
    t.string "betType"
    t.index ["game_id"], name: "index_bets_on_game_id"
    t.index ["user_id"], name: "index_bets_on_user_id"
  end

  create_table "games", force: :cascade do |t|
    t.integer "home_team_id"
    t.integer "away_team_id"
    t.date "match_date"
    t.time "match_time"
    t.string "location"
    t.string "street"
    t.string "street_2"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "matchName"
    t.string "one"
    t.string "draw"
    t.string "two"
    t.string "oneDraw"
    t.string "twoDraw"
    t.string "winner"
  end

  create_table "players", force: :cascade do |t|
    t.string "nationality"
    t.string "full_name"
    t.string "team_name"
    t.string "date_of_birth"
    t.string "birth_location"
    t.string "date_signed"
    t.string "contracted_salary"
    t.string "wage"
    t.string "description"
    t.string "position"
    t.string "height"
    t.string "weight"
    t.string "profile_image"
    t.string "thumbnail"
    t.bigint "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "altName"
    t.string "founded"
    t.string "league"
    t.string "manager"
    t.string "stadium_location"
    t.string "home_stadium"
    t.string "stadium_thumbnail"
    t.text "stadium_description"
    t.string "stadium_capacity"
    t.string "website"
    t.string "facebook"
    t.string "twitter"
    t.string "instagram"
    t.string "team_logo"
    t.string "team_jersey"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "password_digest"
    t.string "phone"
    t.string "street"
    t.string "street_2"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
  end

  add_foreign_key "accounts", "users"
  add_foreign_key "bets", "games"
  add_foreign_key "bets", "users"
  add_foreign_key "players", "teams"
end
