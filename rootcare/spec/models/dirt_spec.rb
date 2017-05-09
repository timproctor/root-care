require 'rails_helper'

RSpec.describe Dirt, type: :model do


  it "has a starting time" do
    driver = Driver.create!(driver_attributes)
    dirt = driver.dirts.create(dirt_attributes(start_time: ''))

    dirt.valid?

    expect(dirt.errors[:start_time].any?).to eq(true)
  end

  it "has an ending time" do
    driver = Driver.create!(driver_attributes)
    dirt = driver.dirts.create(dirt_attributes(end_time: ''))

    dirt.valid?

    expect(dirt.errors[:end_time].any?).to eq(true)
  end

  it "has a distance" do
    driver = Driver.create!(driver_attributes)
    dirt = driver.dirts.create(dirt_attributes(distance: ''))

    dirt.valid?

    expect(dirt.errors[:distance].any?).to eq(true)
  end

  it "can calculate #change_in_time" do
    driver = Driver.create!(driver_attributes(name: "dan"))
    dirt   = Dirt.create!(dirt_attributes(name: driver.name
                          start_time: "07:15", end_time: "07:45",
                          distance: "17.3"))

    change_in_time = dirt.change_in_time(end_time, start_time)
    expect(change_in_time)to eq.(1800)
  end



end
