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

ActiveRecord::Schema.define(version: 20140326120227) do

  create_table "admins", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "answers", force: true do |t|
    t.text     "goodanswer"
    t.text     "answertwo",   limit: 255
    t.text     "answerthree"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "challenge_steps", force: true do |t|
    t.integer  "challenge_id"
    t.integer  "question_id"
    t.integer  "answerer_id"
    t.text     "chosen_answer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "challenge_steps", ["answerer_id"], name: "index_challenge_steps_on_answerer_id"
  add_index "challenge_steps", ["challenge_id"], name: "index_challenge_steps_on_challenge_id"
  add_index "challenge_steps", ["question_id"], name: "index_challenge_steps_on_question_id"

  create_table "challenges", force: true do |t|
    t.integer  "champion_id"
    t.string   "invite_key"
    t.integer  "score",       default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "challenges", ["champion_id"], name: "index_challenges_on_champion_id"

  create_table "questions", force: true do |t|
    t.text     "query"
    t.text     "explanation"
    t.integer  "section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "difficulty"
    t.text     "source_url"
  end

  create_table "sections", force: true do |t|
    t.text     "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "token"
    t.string   "image"
    t.string   "city"
    t.string   "gender"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "birth_date"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
