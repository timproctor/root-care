class DirtsController < ApplicationController
  before_action :get_all_drivers

  def index
    @trips = sort_by_total_trip_miles
  end
end
