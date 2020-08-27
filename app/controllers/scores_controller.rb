# frozen_string_literal: true

class ScoresController < ApplicationController
  before_action :set_scores, only: [:index]

  def index
    if params[:search] || !params[:search].nil?
      @data_zona = (search_prov_kota('prov') + search_prov_kota('kota')).uniq
    else
      @data_zona = @scores.last.data.map { |d| JSON.parse(d.gsub('=>', ':')) }
                          .sort_by { |d| d['kode_prov'] }
    end
  end

  private

  def set_scores
    @scores = Score.all
    @latest_updates = @scores.last.tanggal
    @data_zona_prev = @scores.second_to_last.data.map { |d| JSON.parse(d.gsub('=>', ':')) }
  end

  def search_prov_kota(prov_kota)
    @scores.last.data.map { |d| JSON.parse(d.gsub('=>', ':')) }
           .find_all { |d| d[prov_kota].include? params[:search].upcase }
           .sort_by { |d| d['kode_prov'] }

  end
end
