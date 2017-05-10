class DirtsController < ApplicationController
  def index
    @drivers = Driver.all
  end


  #  @drivers.each_with_index do |driver, dirts|
#  @driver_store[driver.id] = driver.dirts
# end
#   @driver_store

end
