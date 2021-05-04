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

ActiveRecord::Schema.define(version: 2021_04_27_153343) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "classrooms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "events", force: :cascade do |t|
    t.date "date"
    t.bigint "student_id", null: false
    t.bigint "presentation_id", null: false
    t.integer "score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["presentation_id"], name: "index_events_on_presentation_id"
    t.index ["student_id"], name: "index_events_on_student_id"
  end

  create_table "presentation_areas", force: :cascade do |t|
    t.string "name"
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "presentation_subareas", force: :cascade do |t|
    t.string "name"
    t.bigint "presentation_area_id", null: false
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["presentation_area_id"], name: "index_presentation_subareas_on_presentation_area_id"
  end

  create_table "presentations", force: :cascade do |t|
    t.string "name"
    t.bigint "presentation_subarea_id", null: false
    t.float "year"
    t.integer "priority"
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["presentation_subarea_id"], name: "index_presentations_on_presentation_subarea_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.date "birth_date"
    t.bigint "classroom_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["classroom_id"], name: "index_students_on_classroom_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "events", "presentations"
  add_foreign_key "events", "students"
  add_foreign_key "presentation_subareas", "presentation_areas"
  add_foreign_key "presentations", "presentation_subareas"
  add_foreign_key "students", "classrooms"
end
