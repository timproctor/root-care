require 'rails_helper'

RSpec.describe DirtsController, type: :controller do

  it "create a @trip" do
    driver = Driver.create!(driver_attributes)

    get :create
    expect(assigns(:trip)).to be_a_new(Dirt) 
  end
end
