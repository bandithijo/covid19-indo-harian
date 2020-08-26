# frozen_string_literal: true

class ScoresController < ApplicationController
  before_action :set_scores, only: [:index]

  def index
    if params[:search] || !params[:search].nil?
      @data_zona = Score.all.last.data.map { |d| JSON.parse(d.gsub('=>', ':')) }.find_all { |d| d["kota"].include? params[:search].upcase }
    else
      @data_zona = Score.all.last.data.map { |d| JSON.parse(d.gsub('=>', ':')) }
    end
  end

  private

  def set_scores
    @scores = Score.all
    @latest_updates = @scores.last.tanggal
  end
end
