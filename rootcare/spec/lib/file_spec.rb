require "rails_helper"

RSpec.describe "file" do
  it "reads mock data file" do
    expect(file_fixture("driver_and_trip_data.prn").read).to eq("")
  end
end
