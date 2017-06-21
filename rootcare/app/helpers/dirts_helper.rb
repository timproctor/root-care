module DirtsHelper
  def show_name_of(driver)
    driver.name.capitalize
  end

  def show_name_of_driver_id(trip)
    the_driver_id(trip).name.capitalize
  end

  def show_total_trip_miles_for(trip)
    the_driver_id(trip).total_trip_miles
  end

  def show_average_speed_for(trip)
    the_driver_id(trip).average_speed
  end

  def the_driver_id(trip)
    Driver.find(trip.driver_id)
  end

  def trips
    @trips
  end

  def drivers
    Driver.drivers
  end
end
