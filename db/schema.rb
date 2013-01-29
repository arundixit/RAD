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

ActiveRecord::Schema.define(:version => 20130128135621) do

  create_table "ad_bookings", :force => true do |t|
    t.integer  "ad_id"
    t.integer  "ad_space_id"
    t.integer  "ad_rate_id"
    t.date     "from_date"
    t.date     "to_date"
    t.decimal  "amount"
    t.boolean  "ispaid"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "ad_frequencies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ad_rates", :force => true do |t|
    t.integer  "ad_space_id"
    t.decimal  "rate"
    t.integer  "frequency_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "ad_spaces", :force => true do |t|
    t.text     "length"
    t.text     "breadth"
    t.text     "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ads", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "code_details"
    t.boolean  "ispublished"
    t.boolean  "isapproved"
    t.boolean  "expiry_date"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
