class DealershipsController < ApplicationController
  def index
    @dealerships = Dealership.all.order_by_created_at
  end

  def show
    @dealership = Dealership.find(params[:id])
  end
end