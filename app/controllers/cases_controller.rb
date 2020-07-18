# frozen_string_literal: true

class CasesController < ApplicationController
  before_action :set_cases, only: [:index, :chart]

  def index
    respond_to do |format|
      format.html
      format.xlsx {
        response.headers['Content-Disposition'] = \
        "attachment; \
         filename=COVID-19_INDO_PERHARI_#{@cases.last.fetched_at}.xlsx"
      }
      format.csv {
        send_data @cases.to_csv,
        filename: "COVID-19_INDO_PERHARI_#{@cases.last.fetched_at}.csv"
      }
    end
  end

  def chart
    @data_positif_covid         = Case.group_by_day(:fetched_at).sum(:positif_covid)
    @data_positif_covid_today   = Case.group_by_day(:fetched_at).sum(:positif_covid_today)
    @data_meninggal_covid       = Case.group_by_day(:fetched_at).sum(:meninggal_covid)
    @data_meninggal_covid_today = Case.group_by_day(:fetched_at).sum(:meninggal_covid_today)
    @data_sembuh_covid          = Case.group_by_day(:fetched_at).sum(:sembuh_covid)
    @data_sembuh_covid_today    = Case.group_by_day(:fetched_at).sum(:sembuh_covid_today)
    @data_jumlah_suspek         = Case.group_by_day(:fetched_at).sum(:jumlah_suspek)
    @data_jumlah_suspek_today   = Case.group_by_day(:fetched_at).sum(:jumlah_suspek_today)
    @data_jumlah_spesimen       = Case.group_by_day(:fetched_at).sum(:jumlah_spesimen)
    @data_jumlah_spesimen_today = Case.group_by_day(:fetched_at).sum(:jumlah_spesimen_today)
  end

  private

  def set_cases
    @cases = Case.all
    @latest_updates = @cases.last.fetched_at
  end
end
