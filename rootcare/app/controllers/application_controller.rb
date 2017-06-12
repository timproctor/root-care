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

  def filter_trips
    filtered_trips = []
    get_dirts.select do |trip|
      if filter_by_speed(trip)
        filtered_trips << trip
      end
    end
  end

  def sort_by_total_trip_miles
    organize_filtered_by_driver
  end
end
