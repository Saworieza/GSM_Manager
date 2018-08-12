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

ActiveRecord::Schema.define(version: 20180812053444) do

  create_table "accounts", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "cost_centers", force: :cascade do |t|
    t.integer  "number"
    t.text     "details"
    t.integer  "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_cost_centers_on_account_id"
  end

  create_table "customerpos", force: :cascade do |t|
    t.date     "date"
    t.integer  "number"
    t.integer  "customerquote_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["customerquote_id"], name: "index_customerpos_on_customerquote_id"
  end

  create_table "customerquotes", force: :cascade do |t|
    t.string   "name"
    t.date     "date"
    t.integer  "amount"
    t.integer  "cost_center_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["cost_center_id"], name: "index_customerquotes_on_cost_center_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.date     "date"
    t.integer  "number"
    t.integer  "amount"
    t.string   "status"
    t.string   "milestonetype"
    t.integer  "customerpo_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["customerpo_id"], name: "index_invoices_on_customerpo_id"
  end

  create_table "scopes", force: :cascade do |t|
    t.string   "type"
    t.integer  "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["site_id"], name: "index_scopes_on_site_id"
  end

  create_table "sites", force: :cascade do |t|
    t.integer  "number"
    t.string   "name"
    t.string   "status"
    t.integer  "towerheight"
    t.string   "town"
    t.string   "town_class"
    t.integer  "customerpo_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["customerpo_id"], name: "index_sites_on_customerpo_id"
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "state"
    t.integer  "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["site_id"], name: "index_statuses_on_site_id"
  end

end
