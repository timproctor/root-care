module DirtsHelper
  def show_name_of(driver)
    Driver.find(driver.first).name.capitalize
  end
end
