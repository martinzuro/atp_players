# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_200_320_021_151) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'players', force: :cascade do |t|
    t.string 'first_name'
    t.string 'last_name'
    t.string 'hand'
    t.date 'birth_date'
    t.string 'country'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'rankings', force: :cascade do |t|
    t.date 'ranking_date'
    t.integer 'position'
    t.bigint 'player_id'
    t.integer 'ranking_points'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['player_id'], name: 'index_rankings_on_player_id'
  end

  add_foreign_key 'rankings', 'players'
end
