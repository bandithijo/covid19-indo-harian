# frozen_string_literal: true

class ScoresController < ApplicationController
  before_action :set_scores, only: [:index]

  def index
    if params[:search]
      unless params[:search].empty?
        @data_zona = (Score.all.last.data.select { |data| data[params[:search].upcase] })
      else
        @data_zona = Score.all.last.data
      end
    else
      @data_zona = Score.all.last.data
    end
  end

  private

  def set_scores
    @scores = Score.all
    @latest_updates = @scores.last.tanggal
  end
end