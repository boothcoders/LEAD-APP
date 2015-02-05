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

ActiveRecord::Schema.define(version: 20150205155911) do

  create_table "cohorts", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "cohort_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.integer  "enterer_id"
    t.integer  "enteree_id"
    t.integer  "goal_id"
    t.integer  "interaction_id"
    t.datetime "entry_date"
    t.text     "entry_note"
    t.integer  "entry_rating"
    t.integer  "request_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "goal_attempts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "goal_id"
    t.datetime "started_on"
    t.datetime "ended_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goals", force: :cascade do |t|
    t.string   "goal_name"
    t.text     "goal_description"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "interactions", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "interaction_title"
    t.datetime "interaction_date"
    t.text     "interaction_notes"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "requests", force: :cascade do |t|
    t.integer  "requestor_id"
    t.integer  "requestee_id"
    t.integer  "interaction_id"
    t.integer  "goal_id"
    t.text     "feedback_note"
    t.boolean  "feedback_completed"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "cohort_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
