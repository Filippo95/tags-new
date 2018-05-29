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
    t.string   "codicetelecomando"
    t.string   "nome"
    t.string   "cognome"
    t.string   "seggnatario"
    t.datetime "data"
    t.string   "serial_number"
    t.string   "internal_sn"
    t.datetime "data_setup_agg_firmware"
    t.datetime "data_attivazione"
    t.datetime "data_disattivazione"
    t.string   "stato"
    t.datetime "data_sostituzione"
    t.string   "sostituto_da"
    t.text     "note"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.string   "data"
    t.string   "ora"
    t.string   "direzione"
    t.string   "codice_utente"
    t.string   "controlli"
    t.string   "esito"
    t.string   "sorgente"
    t.string   "edizione"
    t.string   "varco"
    t.string   "tracciato_tessera"
    t.string   "slave_id"
    t.string   "lettore"
    t.string   "tipo"
    t.text     "fullcode"
    t.string   "term_id"
    t.string   "mac"
    t.string   "localip"
    t.string   "dhcp"
    t.string   "date"
    t.string   "time"
    t.string   "localtransaction"
    t.string   "io"
    t.string   "iox"
    t.string   "gate_state"
    t.string   "gate_state_ex"
    t.string   "slave_state_ex"
    t.string   "batt"
    t.string   "batt_mv"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end
