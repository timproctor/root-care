require "rails_helper"

RSpec.describe "file" do
  it "reads driver_and_trip_data file" do
    expect(file_fixture_upload("driver_and_trip_data.prn").read).to eq("driver")
  end
end
