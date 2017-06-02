class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def get_all_drivers
    @drivers = Driver.all
    @driver_store = {}

    @drivers.each_with_index do |driver, dirts|
      @driver_store[driver.id] = driver.dirts
    end

    @driver_store
  end

  #def filter_for_under_5_and_over_100
  #  @filtered = @driver_store.values.each do |trips|
  #    trips.each do |trip|
    #     speed = trip.speed(trip.distance, trip.start_time, trip.end_time)
    #     if speed < 5 || speed > 100
    #       trip.delete
    #     end
    #   end
    # end
    # @filtered
  #end

  def sort_by_total_trip_miles
    byebug
    # store = @driver_store
    #
    # store.sort_by do |driver, dirts|
    #   dirts.each do |dirt|
    #     dirt.distance
    #   end
    # end
  end
end
