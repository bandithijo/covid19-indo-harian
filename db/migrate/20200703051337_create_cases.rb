class CreateCases < ActiveRecord::Migration[5.2]
  def change
    create_table :cases do |t|
      t.integer  :positif_covid
      t.integer  :sembuh_covid
      t.integer  :meninggal_covid
      t.integer  :jumlah_odp
      t.integer  :jumlah_pdp
      t.date     :fetched_at
    end
  end
end
