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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130401062218) do

  create_table "answers", :force => true do |t|
    t.integer  "question_id"
    t.boolean  "answered",      :default => false
    t.text     "body"
    t.integer  "researcher_id"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "experts", :force => true do |t|
    t.string  "topic",            :limit => 32,                   :null => false
    t.integer "researcher_count",               :default => 1
    t.boolean "active",                         :default => true
  end

  create_table "questions", :force => true do |t|
    t.string   "email"
    t.string   "topic"
    t.string   "phone_number"
    t.text     "body"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.boolean  "escalated",    :default => false
    t.datetime "needed_by"
  end

  create_table "researchers", :force => true do |t|
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "phone_number"
    t.string   "name"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "superuser",           :default => false
    t.boolean  "Is_Admin",            :default => false
    t.boolean  "activated",           :default => false
    t.string   "expertise"
    t.string   "pref_contact"
  end

end
