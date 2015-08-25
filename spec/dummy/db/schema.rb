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

ActiveRecord::Schema.define(version: 20150825174648) do

  create_table "book_store_authors", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "slug"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "website_link"
    t.string   "email_link"
    t.string   "facebook_link"
    t.string   "twitter_link"
    t.string   "lead"
    t.string   "short_description"
    t.string   "avatar_image"
  end

  add_index "book_store_authors", ["slug"], name: "index_book_store_authors_on_slug", unique: true

  create_table "book_store_books", force: :cascade do |t|
    t.string   "title"
    t.string   "lead"
    t.text     "excerpt"
    t.text     "description"
    t.decimal  "price"
    t.integer  "cover_type"
    t.integer  "num_pages"
    t.string   "isbn"
    t.integer  "year"
    t.string   "buy_link"
    t.string   "size"
    t.string   "cover_image"
    t.string   "slug"
    t.integer  "author_id"
    t.integer  "category_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.boolean  "featured"
    t.integer  "position"
    t.string   "featured_image"
  end

  add_index "book_store_books", ["author_id"], name: "index_book_store_books_on_author_id"
  add_index "book_store_books", ["category_id"], name: "index_book_store_books_on_category_id"
  add_index "book_store_books", ["slug"], name: "index_book_store_books_on_slug", unique: true

  create_table "book_store_categories", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "slug"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "book_store_categories", ["slug"], name: "index_book_store_categories_on_slug", unique: true

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
