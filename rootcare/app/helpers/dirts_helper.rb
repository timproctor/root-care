module DirtsHelper
  def show_name_of(driver)
    the_driver(driver).name.capitalize
  end

  def show_total_miles_of(driver)
    the_driver(driver).total_trip_miles.to_s
  end

  def the_driver(driver)
    Driver.find(driver.first)
  end
end
