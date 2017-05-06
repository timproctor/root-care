require 'rails_helper'

RSpec.describe Driver, type: :model do
  it "has a name" do
    driver = Driver.create(driver_attributes(name: ''))

    driver.valid?

    expect(driver.errors[:name].any?).to eq(true)
  end

  it "has many trips" do
    driver = Driver.new(driver_attributes)
    trip1 = User.new(driver_attributes(name: "rex"))
    trip2 = User.new(driver_attributes(name: "ben"))

    driver.dirts.new(name: trip1)
    driver.dirts.new(name: trip2)

    expect(driver.trips).to include(trip1)
    expect(driver.trips).to include(trip2)
  end
end
