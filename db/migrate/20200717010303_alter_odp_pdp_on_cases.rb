class AlterOdpPdpOnCases < ActiveRecord::Migration[5.2]
  def change
    rename_column :cases, :jumlah_odp, :jumlah_suspek
    rename_column :cases, :jumlah_pdp, :jumlah_spesimen
    rename_column :cases, :jumlah_odp_today, :jumlah_suspek_today
    rename_column :cases, :jumlah_pdp_today, :jumlah_spesimen_today
  end
end
