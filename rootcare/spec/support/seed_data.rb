def seed_data
  @data_lines = File.open("spec/fixtures/files/driver_and_trip_data.prn", "r") do |datafile|
    datafile.readlines
  end

  @data_formatted = @data_lines[0].split(/\r/).map do |entry|
                      entry.split
                    end

  byebug
end
