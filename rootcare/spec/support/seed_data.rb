def seed_data
  data_lines = File.open("spec/fixtures/files/driver_and_trip_data.prn", "r") do |datafile|
    datafile.readlines
    byebug
  end



end
