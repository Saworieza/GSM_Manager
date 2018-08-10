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

ActiveRecord::Schema.define(version: 20180810132442) do

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

  create_table "customer_pos", force: :cascade do |t|
    t.datetime "Date"
    t.integer  "number"
    t.integer  "cost_center_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["cost_center_id"], name: "index_customer_pos_on_cost_center_id"
  end

  create_table "customer_quotes", force: :cascade do |t|
    t.string   "name"
    t.datetime "date"
    t.integer  "amount"
    t.integer  "customer_po_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["customer_po_id"], name: "index_customer_quotes_on_customer_po_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.datetime "date"
    t.integer  "number"
    t.integer  "amount"
    t.string   "status"
    t.string   "milestone_type"
    t.integer  "customer_po_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["customer_po_id"], name: "index_invoices_on_customer_po_id"
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
    t.integer  "tower_height"
    t.string   "town"
    t.string   "town_classification"
    t.integer  "customer_po_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["customer_po_id"], name: "index_sites_on_customer_po_id"
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "state"
    t.integer  "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["site_id"], name: "index_statuses_on_site_id"
  end

end
