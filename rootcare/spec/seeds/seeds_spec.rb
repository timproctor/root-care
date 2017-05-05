require "rails_helper"

describe "seeds" do
  before do
    @data_lines = File.open("spec/fixtures/files/driver_and_trip_data.prn", "r") do |datafile|
      datafile.readlines
    end

    @data_formatted = @data_lines[0].split(/\r/).map do |entry|
                        entry.split
                      end

    seed_data
  end

  it "creates a driver given driver command" do

    driver = Driver.create!(driver_attributes)

    expect(driver.name).to eq("rex")
  end

end
