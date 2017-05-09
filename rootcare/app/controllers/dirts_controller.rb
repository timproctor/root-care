class DirtsController < ApplicationController
  def index
    byebug
    @drivers = Driver.all
    @dirts = @drivers.map {|driver| driver.driver_id}
  end



end
