require "rails_helper"

RSpec.describe "file" do
  it "reads driver_and_trip_data.prn " do
    expect(file_fixture("driver_and_trip_data.prn").read[0..5]).to eq("driver")
  end
end
