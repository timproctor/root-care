class DirtsController < ApplicationController
  before_action :drop_under_5_and_over_100mph
  
  def index
    @drivers = Driver.all
  end
end
