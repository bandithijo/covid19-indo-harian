# frozen_string_literal: true

class Score < ApplicationRecord
  after_create :insert_data_prev

  private

  def insert_data_prev
    unless id == 1
      data_prev = Score.all.second_to_last.data.map { |d| JSON.parse(d.gsub('=>', ':')) }
      update!(data_prev: data_prev)
    end
  end
end
