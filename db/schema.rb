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

ActiveRecord::Schema.define(version: 20160406140944) do

  create_table "articles", force: :cascade do |t|
    t.string   "url"
    t.string   "title"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "description"
  end

  create_table "components", force: :cascade do |t|
    t.integer  "article_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "title"
    t.text     "description"
    t.string   "selection_hash"
    t.string   "tools_visualization_used_tags"
    t.string   "tools_publication_used_tags"
    t.string   "tools_platform_designed_for_tags"
    t.string   "tools_additional_details"
    t.string   "design_graphic_type"
    t.string   "design_graphic_choice_details"
    t.string   "design_interactive_tags"
    t.string   "design_usability_testing_details"
    t.string   "design_additional_details"
  end

  add_index "components", ["article_id"], name: "index_components_on_article_id"

  create_table "creators", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "name"
    t.string   "role"
    t.integer  "component_id"
  end

  add_index "creators", ["component_id"], name: "index_creators_on_component_id"

  create_table "data_sources", force: :cascade do |t|
    t.integer  "component_id"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "dataset_organization_name"
    t.string   "dataset_url"
    t.string   "dataset_name"
    t.string   "dataset_source_file_url"
    t.string   "dataset_file_format_tags"
    t.string   "dataset_reproduction_instructions"
    t.string   "dataset_choice_details"
    t.string   "dataset_additional_details"
  end

  add_index "data_sources", ["component_id"], name: "index_data_sources_on_component_id"

  create_table "design_elements", force: :cascade do |t|
    t.integer  "component_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "design_elements", ["component_id"], name: "index_design_elements_on_component_id"

end
