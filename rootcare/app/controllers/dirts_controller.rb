class DirtsController < ApplicationController
  def index
    @driver_store = Hash.new
    @drivers = Driver.all
    @drivers.each_with_index do |driver, dirts|
      @driver_store[driver.id] = driver.dirts
    end
    @driver_store
  end



end
