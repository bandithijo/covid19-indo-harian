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

ActiveRecord::Schema.define(version: 2020_07_14_055856) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cases", force: :cascade do |t|
    t.integer "positif_covid", default: 0
    t.integer "sembuh_covid", default: 0
    t.integer "meninggal_covid", default: 0
    t.integer "jumlah_odp", default: 0
    t.integer "jumlah_pdp", default: 0
    t.date "fetched_at"
    t.integer "positif_covid_today", default: 0
    t.integer "sembuh_covid_today", default: 0
    t.integer "meninggal_covid_today", default: 0
    t.integer "jumlah_odp_today", default: 0
    t.integer "jumlah_pdp_today", default: 0
  end

end
