class DirtsController < ApplicationController
  def index
    @drivers = Driver.all
  end
end
