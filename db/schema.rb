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

ActiveRecord::Schema.define(:version => 20131101050120) do

  create_table "admins", :force => true do |t|
    t.string   "username",   :limit => 25
    t.string   "email",                    :null => false
    t.string   "password",   :limit => 40
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "ads", :force => true do |t|
    t.string   "value",      :limit => 100
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "answers", :force => true do |t|
    t.string   "value",      :null => false
    t.string   "result"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name",       :limit => 100
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "category_news", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "category_products", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "location_products", :force => true do |t|
    t.float    "price"
    t.string   "address"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "news", :force => true do |t|
    t.string   "Name",       :limit => 100
    t.text     "Body"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "polls", :force => true do |t|
    t.string   "value",      :limit => 100
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "name",         :limit => 100
    t.date     "release_date"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "ratings", :force => true do |t|
    t.string   "result",     :limit => 100
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "firstName",  :limit => 25
    t.string   "lasName",    :limit => 25
    t.string   "email",                    :null => false
    t.string   "password",   :limit => 40
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

end
