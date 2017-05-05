require "rails_helper"

RSpec.describe "file" do
  before do
    @data_lines = File.open("spec/fixtures/files/driver_and_trip_data.prn", "r") do |datafile|
      datafile.readlines
    end

    @data_formatted = @data_lines[0].split(/\r/).map do |entry|
                        entry.split
                      end
  end
  it "reads mock data file" do
    expect(@data_formatted[0][1]).to eq("rex")
  end
end
