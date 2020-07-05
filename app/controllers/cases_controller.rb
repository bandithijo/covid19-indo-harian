class CasesController < ApplicationController
  def index
    @cases = Case.all
    @latest_updates = @cases.last.fetched_at
  end

  def chart
    @data_positif_covid = Case.group_by_day(:fetched_at).sum(:positif_covid)
    @data_meninggal_covid = Case.group_by_day(:fetched_at).sum(:meninggal_covid)
    @data_sembuh_covid = Case.group_by_day(:fetched_at).sum(:sembuh_covid)
    @data_jumlah_odp = Case.group_by_day(:fetched_at).sum(:jumlah_odp)
    @data_jumlah_pdp = Case.group_by_day(:fetched_at).sum(:jumlah_pdp)
  end
end