class DirtsController < ApplicationController
  def new
    @trip = Dirt.new
    @driver_id = Driver.find_by(name: "ben").id
  end

  def create
    @trip = Driver.dirts.new(dirt_params)
    @dirt.save
  end

private

  def dirt_params
    params.require(:dirt).permit(:name, :start_time, :end_time, :distance)
  end


end
