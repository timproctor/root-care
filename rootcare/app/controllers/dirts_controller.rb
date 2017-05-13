class DirtsController < ApplicationController
  before_action :get_all_drivers
  before_action :filter_for_under_5_and_over_100

  def index
  end
end
