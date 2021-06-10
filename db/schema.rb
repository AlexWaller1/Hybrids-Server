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

ActiveRecord::Schema.define(version: 2021_06_10_142934) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "population"
    t.string "state"
    t.string "country"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "report"
  end

  create_table "hybrids", force: :cascade do |t|
    t.string "name"
    t.string "species"
    t.string "origin"
    t.string "personality"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mimimarts", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "sodamachine"
    t.string "description"
    t.string "state"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "minimarts", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "sodamachine"
    t.string "description"
    t.string "state"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "motorhomes", force: :cascade do |t|
    t.string "model"
    t.string "year"
    t.string "mileage"
    t.string "color"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.text "description"
  end

  create_table "robots", force: :cascade do |t|
    t.string "name"
    t.string "model"
    t.string "manufacturer"
    t.string "purpose"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skatebaorders", force: :cascade do |t|
    t.string "name"
    t.string "hometown"
    t.string "style"
    t.string "biography"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skateparks", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "features"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
