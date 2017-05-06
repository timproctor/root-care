require 'rails_helper'

RSpec.describe Driver, type: :model do
  it "has a name" do
    driver = Driver.create(driver_attributes(name: ''))

    driver.valid?

    expect(driver.errors[:name].any?).to eq(true)
  end

  it "it has many trips" do
    driver = driver.create!(driver_attributes)
    driver2= driver2.create!(driver_attributes(name: "ben"))
    driver3= driver3.create!(driver_attributes(name: "cami"))

    dirt = Dirt.create!(dirt_attributes(name: driver.name))
    dirt2 = Dirt.create!(dirt_attributes(name: driver2.name))
    dirt3 = Dirt.create!(dirt_attributes(name: driver3.name))

    trip = driver.trips.new
    trip.driver = driver
    trip.save!

    trip1 = driver.trips.new
    trip1.driver = driver
    trip1.save!

    trip2 = driver2.trips.new
    trip2.driver = driver2
    trip2.save!

    expect(driver.trips).to include(trip1)
    expect(driver2.trips).to include(driver2)
    expect(driver3.trips).not_to include(driver2)
  end
end
