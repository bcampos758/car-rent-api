class VehiclesController < ApplicationController
  def index
    render json: {data: Vehicle.all, status: 200}
  end

  def search
    render json: { data: Vehicle.joins(:units).where({units: {isAvailable: true, location: params[:location]}}).distinct, status: 200}
  end

  def show
    render json: {data: Vehicle.find(params[:id]).units.where(isAvailable: true, location: params[:location]), status: 200}
  end

end
