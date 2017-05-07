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



end
