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

ActiveRecord::Schema.define(version: 20180518124113) do

  create_table "tags", force: :cascade do |t|
    t.string   "codicetelecomando",       limit: 255
    t.string   "nome",                    limit: 255
    t.string   "cognome",                 limit: 255
    t.string   "seggnatario",             limit: 255
    t.datetime "data"
    t.string   "serial_number",           limit: 255
    t.string   "internal_sn",             limit: 255
    t.datetime "data_setup_agg_firmware"
    t.datetime "data_attivazione"
    t.datetime "data_disattivazione"
    t.string   "stato",                   limit: 255
    t.datetime "data_sostituzione"
    t.string   "sostituto_da",            limit: 255
    t.text     "note",                    limit: 65535
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.string   "data",              limit: 255
    t.string   "ora",               limit: 255
    t.string   "direzione",         limit: 255
    t.string   "codice_utente",     limit: 255
    t.string   "controlli",         limit: 255
    t.string   "esito",             limit: 255
    t.string   "sorgente",          limit: 255
    t.string   "edizione",          limit: 255
    t.string   "varco",             limit: 255
    t.string   "tracciato_tessera", limit: 255
    t.string   "slave_id",          limit: 255
    t.string   "lettore",           limit: 255
    t.string   "tipo",              limit: 255
    t.text     "fullcode",          limit: 65535
    t.string   "term_id",           limit: 255
    t.string   "mac",               limit: 255
    t.string   "localip",           limit: 255
    t.string   "dhcp",              limit: 255
    t.string   "date",              limit: 255
    t.string   "time",              limit: 255
    t.string   "localtransaction",  limit: 255
    t.string   "io",                limit: 255
    t.string   "iox",               limit: 255
    t.string   "gate_state",        limit: 255
    t.string   "gate_state_ex",     limit: 255
    t.string   "slave_state_ex",    limit: 255
    t.string   "batt",              limit: 255
    t.string   "batt_mv",           limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

end
