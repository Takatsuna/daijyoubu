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

ActiveRecord::Schema.define(version: 20141212125516) do

  create_table "busyos", force: true do |t|
    t.string   "name"
    t.string   "gl"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "hyoujiname"
  end

  create_table "itakuhakens", force: true do |t|
    t.string   "kessaibango"
    t.string   "kessaikenmei"
    t.datetime "start"
    t.datetime "end"
    t.string   "ukeireninzu"
    t.integer  "jyucyu_id"
    t.integer  "partner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "jisshinaiyou"
  end

  create_table "jyucyus", force: true do |t|
    t.string   "pjcode"
    t.string   "kenmei"
    t.string   "pm"
    t.datetime "start"
    t.datetime "end"
    t.integer  "kokyaku_id"
    t.string   "keiyakusyubetsu"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "busyo_id"
    t.string   "jyucyukessaibango"
  end

  create_table "kokyakus", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "partnermembers", force: true do |t|
    t.string   "shimeicode"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "partner_id"
  end

  create_table "partners", force: true do |t|
    t.string   "name"
    t.string   "kihonkeiyaku"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sagyouhoukokus", force: true do |t|
    t.integer  "sagyoushiji_id"
    t.integer  "sagyoukakunin_id"
    t.string   "atena"
    t.string   "sashidashi"
    t.integer  "youinjisseki_id"
    t.text     "jisshinaiyou"
    t.boolean  "sumi"
    t.string   "nengetsu"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sagyoukakunins", force: true do |t|
    t.integer  "sagyouhoukoku_id"
    t.string   "atena"
    t.string   "sashidashi"
    t.boolean  "sumi"
    t.string   "nengetsu"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sagyoushijis", force: true do |t|
    t.integer  "itakuhaken_id"
    t.integer  "sagyouhoukoku_id"
    t.string   "atena"
    t.string   "sashidashi"
    t.text     "jisshinaiyou"
    t.boolean  "sumi"
    t.string   "nengetsu"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "hakkoubi"
  end

  create_table "youinjissekis", force: true do |t|
    t.integer  "youinwariate_id"
    t.integer  "sagyouhoukoku_id"
    t.string   "kadouhour"
    t.string   "kadoumin"
    t.string   "nengetsu"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "youinwariates", force: true do |t|
    t.integer  "itakuhaken_id"
    t.integer  "partnermember_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
