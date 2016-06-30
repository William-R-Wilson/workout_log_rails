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

ActiveRecord::Schema.define(version: 20160630003242) do

  create_table "exercises", force: :cascade do |t|
    t.string   "name"
    t.boolean  "time_based"
    t.boolean  "weight"
    t.boolean  "sets"
    t.boolean  "reps"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workout_exercises", force: :cascade do |t|
    t.integer  "time_in_seconds"
    t.integer  "num_reps"
    t.integer  "num_sets"
    t.integer  "weight"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "workout_id"
    t.integer  "exercise_id"
  end

  add_index "workout_exercises", ["exercise_id"], name: "index_workout_exercises_on_exercise_id"
  add_index "workout_exercises", ["workout_id"], name: "index_workout_exercises_on_workout_id"

  create_table "workouts", force: :cascade do |t|
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
