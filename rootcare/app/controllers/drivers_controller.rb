class DriversController < ApplicationController
  def index
    @drivers = Driver.drivers
  end

  def new
    @driver = Driver.new
  end

  def create
    @driver = Driver.new(driver_params)
    @driver.save
  end

private

  def driver_params
    params.require(:driver).permit(:name)
  end
end
