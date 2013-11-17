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

ActiveRecord::Schema.define(:version => 20131117092538) do

  create_table "admins", :force => true do |t|
    t.string   "username",   :limit => 25
    t.string   "email",                    :null => false
    t.string   "password",   :limit => 40
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "ads", :force => true do |t|
    t.integer  "admins_id"
    t.string   "value",      :limit => 100
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "ads", ["admins_id"], :name => "index_ads_on_admins_id"

  create_table "answers", :force => true do |t|
    t.integer  "polls_id"
    t.string   "value",      :limit => 100
    t.string   "result",     :limit => 100
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "answers", ["polls_id"], :name => "index_answers_on_polls_id"

  create_table "categories", :force => true do |t|
    t.string   "name",       :limit => 100
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "category_news", :force => true do |t|
    t.integer  "news_id"
    t.integer  "categories_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "category_news", ["news_id", "categories_id"], :name => "index_category_news_on_news_id_and_categories_id"

  create_table "locations", :force => true do |t|
    t.integer  "products_id"
    t.string   "address",     :limit => 250
    t.float    "price"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "locations", ["products_id"], :name => "index_locations_on_products_id"

  create_table "news", :force => true do |t|
    t.integer  "admins_id"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "news", ["admins_id"], :name => "index_news_on_admins_id"

  create_table "polls", :force => true do |t|
    t.integer  "admins_id"
    t.string   "value",      :limit => 100
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "polls", ["admins_id"], :name => "index_polls_on_admins_id"

  create_table "product_categories", :force => true do |t|
    t.integer  "products_id"
    t.integer  "categories_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "product_categories", ["products_id", "categories_id"], :name => "index_product_categories_on_products_id_and_categories_id"

  create_table "products", :force => true do |t|
    t.integer  "admins_id"
    t.string   "name",         :limit => 100
    t.date     "release_date"
    t.float    "value"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "products", ["admins_id"], :name => "index_products_on_admins_id"

  create_table "ratings", :force => true do |t|
    t.integer  "products_id"
    t.integer  "users_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "ratings", ["products_id", "users_id"], :name => "index_ratings_on_products_id_and_users_id"

  create_table "users", :force => true do |t|
    t.string   "firstName",  :limit => 25
    t.string   "lasName",    :limit => 25
    t.string   "email",                    :null => false
    t.string   "password",   :limit => 40
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

end
