class TripsController < ApplicationController
  def new
    @driver = Driver.new
    @trip = @driver.trips.new
  end
end
