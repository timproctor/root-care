class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def get_all_drivers
    @drivers = Driver.all
    driver_store = {}

    drivers.each_with_index do |driver, dirts|
      @driver_store[driver.id] = driver.dirts
    end

    driver_store
  end

  def filter_for_under_5_and_over_100
    byebug
  end
end
