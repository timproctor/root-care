module DirtsHelper
  def show_name_of(driver)
    the_driver(driver).name.capitalize
  end

  def show_total_trip_miles_for(driver)
    the_driver(driver).total_trip_miles
  end

  def show_average_speed_for(driver)

  end

  def the_driver(driver)
    Driver.find(driver.first)
  end

  def drivers
    @trips
  end
end
