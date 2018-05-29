class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :codicetelecomando
      t.string :nome
      t.string :cognome
      t.string :seggnatario
      t.datetime :data
      t.string :serial_number
      t.string :internal_sn
      t.datetime :data_setup_agg_firmware
      t.datetime :data_attivazione
      t.datetime :data_disattivazione
      t.string :stato
      t.datetime :data_sostituzione
      t.string :sostituto_da
      t.text :note

      t.timestamps null: false
    end
  end
end
