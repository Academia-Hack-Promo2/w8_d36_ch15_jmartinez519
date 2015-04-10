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

ActiveRecord::Schema.define(version: 20150410184028) do

  create_table "attacks", force: :cascade do |t|
    t.string   "kind",         limit: 255
    t.string   "name",         limit: 255
    t.integer  "danger",       limit: 4
    t.integer  "weapon_id",    limit: 4
    t.string   "character",    limit: 255
    t.integer  "character_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "attacks", ["character_id"], name: "index_attacks_on_character_id", using: :btree
  add_index "attacks", ["weapon_id"], name: "index_attacks_on_weapon_id", using: :btree

  create_table "body_armors", force: :cascade do |t|
    t.string   "kind",         limit: 255
    t.string   "name",         limit: 255
    t.string   "character",    limit: 255
    t.integer  "defense",      limit: 4
    t.integer  "danger",       limit: 4
    t.integer  "money",        limit: 4
    t.integer  "character_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "body_armors", ["character_id"], name: "index_body_armors_on_character_id", using: :btree

  create_table "bodyarmor_characters", force: :cascade do |t|
    t.integer  "character_id",  limit: 4
    t.integer  "body_armor_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "bodyarmor_characters", ["body_armor_id"], name: "index_bodyarmor_characters_on_body_armor_id", using: :btree
  add_index "bodyarmor_characters", ["character_id"], name: "index_bodyarmor_characters_on_character_id", using: :btree

  create_table "character_weapons", force: :cascade do |t|
    t.integer  "character_id", limit: 4
    t.integer  "weapon_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "character_weapons", ["character_id"], name: "index_character_weapons_on_character_id", using: :btree
  add_index "character_weapons", ["weapon_id"], name: "index_character_weapons_on_weapon_id", using: :btree

  create_table "characters", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.string   "kind_of_character", limit: 255
    t.integer  "age",               limit: 4
    t.integer  "vitality",          limit: 4,   default: 1
    t.integer  "life_points",       limit: 4,   default: 20
    t.string   "ability",           limit: 255
    t.integer  "level",             limit: 4,   default: 1
    t.integer  "points_of_defense", limit: 4,   default: 5
    t.integer  "points_of_attack",  limit: 4,   default: 5
    t.integer  "player_id",         limit: 4
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "characters", ["player_id"], name: "index_characters_on_player_id", using: :btree

  create_table "matches", force: :cascade do |t|
    t.integer  "character1_id", limit: 4
    t.integer  "character2_id", limit: 4
    t.integer  "vitality1",     limit: 4
    t.integer  "vitality2",     limit: 4
    t.integer  "ganador",       limit: 4
    t.boolean  "retiro",        limit: 1
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "matches", ["character1_id"], name: "fk_rails_d43d3d6959", using: :btree
  add_index "matches", ["character2_id"], name: "fk_rails_ded8595127", using: :btree

  create_table "players", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "last_name",  limit: 255
    t.string   "email",      limit: 255
    t.integer  "money",      limit: 4,   default: 10
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.string   "kind",         limit: 255
    t.string   "name",         limit: 255
    t.integer  "danger",       limit: 4
    t.integer  "defense",      limit: 4
    t.integer  "money",        limit: 4
    t.integer  "character_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "weapons", ["character_id"], name: "index_weapons_on_character_id", using: :btree

  add_foreign_key "attacks", "characters"
  add_foreign_key "attacks", "weapons"
  add_foreign_key "body_armors", "characters"
  add_foreign_key "bodyarmor_characters", "body_armors"
  add_foreign_key "bodyarmor_characters", "characters"
  add_foreign_key "character_weapons", "characters"
  add_foreign_key "character_weapons", "weapons"
  add_foreign_key "characters", "players"
  add_foreign_key "matches", "characters", column: "character1_id"
  add_foreign_key "matches", "characters", column: "character2_id"
  add_foreign_key "weapons", "characters"
end
