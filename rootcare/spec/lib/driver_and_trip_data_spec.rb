RSpec.describe "seeds" do
  it "reads sample file driver_and_trip_data" do
    expect(file_fixture("driver_and_trip_data.prn").read).to eq("driver")
  end
