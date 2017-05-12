class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def drop_under_5_and_over_100mph
    byebug
  end
end
