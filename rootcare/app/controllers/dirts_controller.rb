class DirtsController < ApplicationController
  before_action :get_all_drivers

  def index
    filter_for_under_5_and_over_100
  end
end
