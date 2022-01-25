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

ActiveRecord::Schema.define(version: 2022_01_25_042900) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: :cascade do |t|
    t.integer "pokemon_id"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "abilities_pokemons", id: false, force: :cascade do |t|
    t.integer "ability_id"
    t.integer "pokemon_id"
    t.index ["ability_id", "pokemon_id"], name: "index_abilities_pokemons_on_ability_id_and_pokemon_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.string "poketype"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "base_experience", default: 0
    t.integer "height", default: 0
    t.integer "weight", default: 0
    t.integer "index", default: 0
    t.integer "weaknes", default: 0
    t.string "img", default: "0"
  end

  create_table "pokemons_trainers", id: false, force: :cascade do |t|
    t.integer "trainer_id"
    t.integer "pokemon_id"
    t.index ["trainer_id", "pokemon_id"], name: "index_pokemons_trainers_on_trainer_id_and_pokemon_id"
  end

  create_table "trainers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
