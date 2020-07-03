class CasesController < ApplicationController
  def index
    @cases = Case.all
    @latest_updates = @cases.last.fetched_at
  end
end
