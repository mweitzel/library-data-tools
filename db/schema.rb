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

ActiveRecord::Schema.define(version: 20131110004613) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "holds", force: true do |t|
    t.integer "bib_record"
    t.string  "user_hash"
    t.string  "request_date"
    t.string  "material_code"
    t.string  "fulfillment_date"
    t.integer "copies"
    t.string  "branch_code"
    t.string  "cancel_status"
  end

  add_index "holds", ["bib_record"], name: "index_holds_on_bib_record", using: :btree
  add_index "holds", ["branch_code"], name: "index_holds_on_branch_code", using: :btree
  add_index "holds", ["cancel_status"], name: "index_holds_on_cancel_status", using: :btree
  add_index "holds", ["copies"], name: "index_holds_on_copies", using: :btree
  add_index "holds", ["fulfillment_date"], name: "index_holds_on_fulfillment_date", using: :btree
  add_index "holds", ["material_code"], name: "index_holds_on_material_code", using: :btree
  add_index "holds", ["request_date"], name: "index_holds_on_request_date", using: :btree
  add_index "holds", ["user_hash"], name: "index_holds_on_user_hash", using: :btree

  create_table "materials", force: true do |t|
    t.integer "bib_record"
    t.string  "material_code"
    t.integer "copies"
    t.integer "number_of_open_holds"
  end

  add_index "materials", ["bib_record"], name: "index_materials_on_bib_record", using: :btree
  add_index "materials", ["copies"], name: "index_materials_on_copies", using: :btree
  add_index "materials", ["material_code"], name: "index_materials_on_material_code", using: :btree
  add_index "materials", ["number_of_open_holds"], name: "index_materials_on_number_of_open_holds", using: :btree

end
