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

ActiveRecord::Schema.define(version: 20161011002438) do

  create_table "dogs", force: :cascade do |t|
    t.string   "name"
    t.string   "age"
    t.string   "size"
    t.string   "race"
    t.string   "personality"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "user_id"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.index ["user_id"], name: "index_dogs_on_user_id"
  end

  create_table "proposals", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "walker_id"
    t.string   "dogs"
    t.string   "gang"
    t.text     "observation"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "location"
    t.integer  "status",      default: 0
    t.integer  "rating"
    t.string   "days"
    t.string   "hours"
    t.index ["user_id"], name: "index_proposals_on_user_id"
    t.index ["walker_id"], name: "index_proposals_on_walker_id"
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "address"
    t.string   "cpf"
    t.string   "phone"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "walkers", force: :cascade do |t|
    t.string   "name"
    t.string   "age"
    t.string   "address"
    t.string   "cpf"
    t.text     "bio"
    t.text     "experience"
    t.string   "price"
    t.string   "phone"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "region"
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
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.index ["email"], name: "index_walkers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_walkers_on_reset_password_token", unique: true
  end

end
