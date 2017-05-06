class DirtsController < ApplicationController
  def new
    @trip = @driver.trips.new
  end
end
