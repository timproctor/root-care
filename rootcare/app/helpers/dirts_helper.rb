module DirtsHelper
  def show_name_of(trip)
    the_driver(trip).name.capitalize
  end

  def show_total_trip_miles_for(trip)
    the_driver(trip).total_trip_miles
  end

  def show_average_speed_for(trip)
    the_driver(trip).average_speed
  end

  def the_driver(trip)
    Driver.find(driver.driver_id)
  end

  def trips
    @trips
  end

  def drivers
    @drivers
  end
end
