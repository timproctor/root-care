require 'rails_helper'

RSpec.describe DriversController, type: :controller do
  before do
    driver = Driver.new(driver_attributes)
  end

  it "can navigate to new" do
  get :new, params: { name: driver }

  expect(response).to redirect_to(new_session_url)
end

end
