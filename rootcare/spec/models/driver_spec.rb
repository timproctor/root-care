require 'rails_helper'

RSpec.describe Driver, type: :model do
  it "has a name" do
    driver = Driver.create(driver_attributes(name: ''))

    driver.valid?

    expect(driver.errors[:name].any?).to eq(true)
  end

  it "it has many dirts" do
    driver = driver.new(driver_attributes)
    driver2= driver2.new(driver_attributes(name: "ben"))
    driver3= driver3.new(driver_attributes(name: "cami"))

    dirt = Dirt.new(dirt_attributes(name: "rex"))
    dirt2 = Dirt.new(dirt_attributes(name: "ben "))

    trip1 = trips.dirt.new(dirt_id: dirt.id, driver_id: driver.id)
    trip1.driver = driver
    trip1.save!

    trip2 = trips.dirt.new(dirt_id: dirt2.id, driver_id: driver2.id)
    trip2.driver = driver2
    trip2.save!

    expect(driver.trips).to include(trip1)
    expect(driver2.trips).to include(driver2)
    expect(driver3.trips).not_to include(driver2)
  end
end
