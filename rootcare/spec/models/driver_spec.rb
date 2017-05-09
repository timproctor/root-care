require 'rails_helper'

RSpec.describe Driver, type: :model do

  it "has a unique name" do
    driver = Driver.create(driver_attributes(name: ''))

    driver.valid?

    expect(driver.errors[:name].any?).to eq(true)
  end

  it "it has many trips" do
    driver = Driver.create!(driver_attributes)
    trip1 = driver.dirts.new(dirt_attributes)
    trip1.save!

    trip2 = driver.dirts.new(dirt_attributes)
    trip2.save!

    expect(driver.dirts).to include(trip1)
    expect(driver.dirts).to include(trip2)
  end

  it "finds #total_trip_miles for a driver" do
    driver = Driver.create!(driver_attributes(name: "dan"))
    trip1  = Dirt.create!(dirt_attributes(name: driver.name,
                      start_time: "07:15", end_time: "07:45", distance: "17.3"))
    trip2  = Dirt.create!(dirt_attributes(name: driver.name, start_time: "06:12",
                      end_time: "06:32", distance: "21.8"))

    total_trip_miles = driver.total_trip_miles

    expect(total_trip_miles).to eq(39)
  end

  it "finds #average_speed for a driver" do
    driver = Driver.create!(driver_attributes(name: "dan"))
    trip1  = Dirt.create!(dirt_attributes(name: driver.name,
                      start_time: "07:15", end_time: "07:45", distance: "17.3"))
    trip2  = Dirt.create!(dirt_attributes(name: driver.name, start_time: "06:12",
                      end_time: "06:32", distance: "21.8"))

    average_speed = driver.average_speed

    expect(average_speed).to eq(47)
  end


end
