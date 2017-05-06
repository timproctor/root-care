class DirtsController < ApplicationController
  def new
    @dirt = @driver.trips.new
  end
end
