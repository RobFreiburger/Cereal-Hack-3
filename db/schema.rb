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

ActiveRecord::Schema.define(version: 20130728041554) do

  create_table "biz_feats", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "biz_feats", ["name"], name: "index_biz_feats_on_name", unique: true

  create_table "biz_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "biz_types", ["name"], name: "index_biz_types_on_name", unique: true

  create_table "todo_lists", force: true do |t|
    t.string   "contact_email"
    t.string   "feature_name"
    t.integer  "osm_id"
    t.string   "address"
    t.string   "hours_of_operation"
    t.boolean  "hours_are_seasonal"
    t.string   "comments"
    t.boolean  "fixme_flag"
    t.string   "link_to_site"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "todo_lists", ["contact_email"], name: "index_todo_lists_on_contact_email"
  add_index "todo_lists", ["feature_name"], name: "index_todo_lists_on_feature_name"

  create_table "todo_lists_biz_feats", id: false, force: true do |t|
    t.integer "todo_list_id"
    t.integer "biz_feat_id"
  end

  create_table "todo_lists_biz_types", id: false, force: true do |t|
    t.integer "todo_list_id"
    t.integer "biz_type_id"
  end

end
