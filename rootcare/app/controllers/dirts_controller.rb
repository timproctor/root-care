class DirtsController < ApplicationController
  before_action :organize_filtered_by_driver

  def index
    @trips = sort_by_total_trip_miles
  end
end
