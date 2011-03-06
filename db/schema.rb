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

ActiveRecord::Schema.define(:version => 20110305185700) do

  create_table "books", :force => true do |t|
    t.string   "isbn"
    t.string   "title"
    t.string   "author"
    t.date     "release_on"
    t.integer  "price"
    t.integer  "publisher_id"
    t.text     "content"
    t.integer  "page"
    t.string   "image_url"
    t.text     "index"
    t.string   "view_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "publishers", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", :force => true do |t|
    t.integer  "isbn"
    t.string   "title"
    t.string   "reviewer"
    t.integer  "rank"
    t.string   "status"
    t.text     "content"
    t.string   "blog_entry"
    t.text     "index"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.string   "salt"
    t.string   "twitter_id"
    t.text     "profile"
    t.string   "image_url"
    t.string   "blog_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
