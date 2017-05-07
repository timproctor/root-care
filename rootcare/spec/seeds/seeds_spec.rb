require "rails_helper"

describe "seeds" do
  before do
    seed_data
  end

  it "can create drivers" do
    drivers = Driver.all

    expect(drivers.count).to eq(8)
  end

  it "creates trips" do
    driver = Driver.find_by(name: "tim")
    trips  = driver.dirts
    
    expect(trips.count).to eq(4)
  end

end
