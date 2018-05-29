class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :data
      t.string :ora
      t.string :direzione
      t.string :codice_utente
      t.string :controlli
      t.string :esito
      t.string :sorgente
      t.string :edizione
      t.string :varco
      t.string :tracciato_tessera
      t.string :slave_id
      t.string :lettore
      t.string :tipo
      t.text :fullcode
      t.string :term_id
      t.string :mac
      t.string :localip
      t.string :dhcp
      t.string :date
      t.string :time
      t.string :localtransaction
      t.string :io
      t.string :iox
      t.string :gate_state
      t.string :gate_state_ex
      t.string :slave_state_ex
      t.string :batt
      t.string :batt_mv

      t.timestamps null: false
    end
  end
end
