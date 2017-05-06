require 'rails_helper'

RSpec.describe Driver, type: :model do
  it "has a name" do
    driver = Driver.create(driver_attributes(name: ''))

    driver.valid?

    expect(driver.errors[:name].any?).to eq(true)
  end
end
