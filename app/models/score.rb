# frozen_string_literal: true

class Score < ApplicationRecord
  serialize :metadata, Array
end
