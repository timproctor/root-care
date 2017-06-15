module DirtsHelper
  def show_name_of(driver)
    the_driver(driver).name.capitalize
  end

  def show_name_of_driver_id(trip)
    the_driver_id(trip).name.capitalize
  end

  def show_total_trip_miles_for(trip)
    the_driver(trip).total_trip_miles
  end

  def show_average_speed_for(trip)
    the_driver(trip).average_speed
  end

  def the_driver_id(trip)
    Driver.find(trip.driver_id)
  end

  def the_driver(driver)
    Driver.find(driver.id)
  end

  def trips
    @trips
  end

  def drivers
    @drivers
  end
end
