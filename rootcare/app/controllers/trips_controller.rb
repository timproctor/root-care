class TripsController < ApplicationController
  def new
    @trip = driver.trips.new
  end


  def create
    @trip = driver.trip.new(trip_params)
    @trip.save
  end

private

  def trip_params
    params.require(:trip).permit(:driver_id, :dirt_id)
  end

end
