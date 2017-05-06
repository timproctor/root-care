require 'rails_helper'

RSpec.describe DriversController, type: :controller do
  it "can navigate to new" do
  get :new, params: { name: driver.id }

  expect(response).to redirect_to(new_session_url)
end

end
