module DirtsHelper
  def show_name_of(driver)
    the_driver(driver).name.capitalize
  end

  def show_total_trip_miles_for(driver)
    the_driver(driver).total_trip_miles
  end

  def discard_5_100_mph?(driver)
    trips = driver.second
    trips.drop_while do |trip|
      speed = trip.speed(trip.distance, trip.start_time, trip.end_time)
      speed < 5 && speed > 100
    end
  end


  def the_driver(driver)
    Driver.find(driver.first)
  end

  def drivers
    @driver_store = {}

    @drivers.each_with_index do |driver, dirts|
      @driver_store[driver.id] = driver.dirts
    end

    @driver_store
  end
end
