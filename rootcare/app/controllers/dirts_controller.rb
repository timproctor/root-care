class DirtsController < ApplicationController
  def new
    @dirt = @driver.dirts.new
  end

  def create
    @dirt = @driver.dirts.new(dirt_params)
    @dirt.save
  end

private

  def dirt_params
    params.require(:dirt).permit(:name, :start_time, :end_time, :distance)
  end
end
