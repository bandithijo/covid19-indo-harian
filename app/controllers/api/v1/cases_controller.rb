class Api::V1::CasesController < ApplicationController
  def index
    @cases = Case.all
    render :json => @cases.to_json, :status => :ok
  end

  def show
    @case = Case.find(params[:id])
    render json: @case.to_json, status: :ok
  end
end
