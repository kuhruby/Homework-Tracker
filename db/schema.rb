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

ActiveRecord::Schema.define(version: 20140708064708) do

  create_table "finished_projects", force: true do |t|
    t.integer  "student_id"
    t.integer  "project_id"
    t.boolean  "submitted"
    t.string   "repo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "finished_projects", ["project_id"], name: "index_finished_projects_on_project_id"
  add_index "finished_projects", ["student_id"], name: "index_finished_projects_on_student_id"

  create_table "projects", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.date     "assigned"
    t.date     "due"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end