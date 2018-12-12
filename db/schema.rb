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

ActiveRecord::Schema.define(version: 2018_12_10_114220) do

  create_table "brands", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "brand_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "image_url"
    t.bigint "items_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["items_id"], name: "index_images_on_items_id"
  end

  create_table "items", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.text "explain"
    t.string "size"
    t.string "condition"
    t.string "shipping_cost"
    t.string "area"
    t.integer "price"
    t.string "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "lcategories_id"
    t.bigint "mcategories_id"
    t.bigint "scategories_id"
    t.bigint "brands_id"
    t.index ["brands_id"], name: "index_items_on_brands_id"
    t.index ["lcategories_id"], name: "index_items_on_lcategories_id"
    t.index ["mcategories_id"], name: "index_items_on_mcategories_id"
    t.index ["name"], name: "index_items_on_name"
    t.index ["scategories_id"], name: "index_items_on_scategories_id"
  end

  create_table "lcategories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "genre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mcategories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "genre"
    t.bigint "lcategories_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["lcategories_id"], name: "index_mcategories_on_lcategories_id"
  end

  create_table "scategories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "genre"
    t.bigint "mcategories_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["mcategories_id"], name: "index_scategories_on_mcategories_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "images", "items", column: "items_id"
  add_foreign_key "mcategories", "lcategories", column: "lcategories_id"
  add_foreign_key "scategories", "mcategories", column: "mcategories_id"
end
