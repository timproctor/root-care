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
end
