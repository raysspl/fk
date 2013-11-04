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

ActiveRecord::Schema.define(version: 20131104014313) do

  create_table "boards", force: true do |t|
    t.string   "name"
    t.date     "dateCreated"
    t.text     "description"
    t.integer  "idParent"
    t.integer  "idForum"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emails", force: true do |t|
    t.integer  "idUser"
    t.string   "address"
    t.date     "dateCreated"
    t.boolean  "verified"
    t.integer  "idForum"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forum_configs", force: true do |t|
    t.integer  "idForum"
    t.string   "key"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forums", force: true do |t|
    t.integer  "idOwner"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "owners", force: true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.integer  "idUser"
    t.integer  "idTopic"
    t.integer  "idForum"
    t.integer  "idPostReplyTo"
    t.string   "title"
    t.text     "text"
    t.date     "dateCreated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topics", force: true do |t|
    t.integer  "idUser"
    t.integer  "idBoard"
    t.integer  "idForum"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.date     "dateOfBirth"
    t.date     "dateCreated"
    t.string   "username"
    t.string   "password"
    t.string   "salt"
    t.integer  "role"
    t.integer  "idForum"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
