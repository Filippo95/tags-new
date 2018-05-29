json.extract! transaction, :id, :data, :ora, :direzione, :codice_utente, :controlli, :esito, :sorgente, :edizione, :varco, :tracciato_tessera, :slave_id, :lettore, :tipo, :fullcode, :term_id, :mac, :localip, :dhcp, :date, :time, :localtransaction, :io, :iox, :gate_state, :gate_state_ex, :slave_state_ex, :batt, :batt_mv, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
