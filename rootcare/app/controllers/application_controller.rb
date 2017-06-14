class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def organize_filtered_by_driver
    @driver_store = {}

    filter_trips.each do |trip|
      @driver_store[trip.driver_id] = trip
    end

    @driver_store
  end

  def get_dirts
    @dirts = Dirt.all
  end

  def filter_by_speed(trip)
    speed = trip.speed(trip.distance, trip.start_time, trip.end_time)
    speed > 5 && speed < 100
  end

  def filter_by_0_distance
    drivers = Driver.all
    filtered_trips_stringify = @filtered_trips.map{|trip| (trip.driver_id).inspect }

    drivers.map do |driver|
      driver if filtered_trips_stringify.include?(driver.id.to_s) == false
    end.compact
  end

  def filter_trips
    @filtered_trips = []
    get_dirts.select do |trip|
      if filter_by_speed(trip)
        @filtered_trips << trip
      end
    end

    filter_by_0_distance
    byebug
  end

  def sort_filter_by_most_trip_miles
    trips = organize_filtered_by_driver.values
    trips.sort_by do |trip|
      Driver.find(trip.driver_id).total_trip_miles
    end.reverse
  end

  def sort_by_total_trip_miles
    sort_filter_by_most_trip_miles
  end
end
