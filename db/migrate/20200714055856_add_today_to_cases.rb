class AddTodayToCases < ActiveRecord::Migration[5.2]
  def up
    add_column :cases, :positif_covid_today, :integer, default: 0
    add_column :cases, :sembuh_covid_today, :integer, default: 0
    add_column :cases, :meninggal_covid_today, :integer, default: 0
    add_column :cases, :jumlah_odp_today, :integer, default: 0
    add_column :cases, :jumlah_pdp_today, :integer, default: 0
    add_column :cases, :aktif, :integer, default: 0
    change_column :cases, :positif_covid, :integer, default: 0
    change_column :cases, :sembuh_covid, :integer, default: 0
    change_column :cases, :meninggal_covid, :integer, default: 0
    change_column :cases, :jumlah_odp, :integer, default: 0
    change_column :cases, :jumlah_pdp, :integer, default: 0
  end

  def down
    change_column :cases, :positif_covid, :integer
    change_column :cases, :sembuh_covid, :integer
    change_column :cases, :meninggal_covid, :integer
    change_column :cases, :jumlah_odp, :integer
    change_column :cases, :jumlah_pdp, :integer
  end
end
