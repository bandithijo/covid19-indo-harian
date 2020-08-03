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

ActiveRecord::Schema.define(version: 2020_08_02_230948) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cases", force: :cascade do |t|
    t.integer "positif_covid", default: 0
    t.integer "sembuh_covid", default: 0
    t.integer "meninggal_covid", default: 0
    t.integer "jumlah_suspek", default: 0
    t.integer "jumlah_spesimen", default: 0
    t.date "fetched_at"
    t.integer "positif_covid_today", default: 0
    t.integer "sembuh_covid_today", default: 0
    t.integer "meninggal_covid_today", default: 0
    t.integer "jumlah_suspek_today", default: 0
    t.integer "jumlah_spesimen_today", default: 0
    t.integer "aktif", default: 0
  end

  create_table "scores", force: :cascade do |t|
    t.date "tanggal"
    t.text "data", default: [], array: true
  end

  create_table "skors", force: :cascade do |t|
    t.date "tanggal"
    t.string "prov"
    t.integer "kode_prov", default: 0
    t.string "kota"
    t.string "kode_kota"
    t.string "hasil"
  end

end
