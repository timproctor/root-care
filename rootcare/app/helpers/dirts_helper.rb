module DirtsHelper
  def show_name_of(driver)
    the_driver(driver).name.capitalize
  end

  def show_total_trip_miles_for(driver)
    the_driver(driver).total_trip_miles
  end

  def show_average_speed_for(driver)
    the_driver(driver).average_speed
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
