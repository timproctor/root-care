require "rails_helper"

RSpec.describe "file" do
  it "reads driver_and_trip_data file" do
    expect(file_fixture("driver_and_trip_data").read).to eq("driver")
  end
end
