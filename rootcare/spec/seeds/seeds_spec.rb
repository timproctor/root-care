require "rails_helper"

describe "seeds" do
  before do
    @data_lines = File.open("spec/fixtures/files/driver_and_trip_data.prn", "r") do |datafile|
      datafile.readlines
    end
  end

  it "creates a driver given driver command" do
    byebug
  end

end
