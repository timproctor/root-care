def seed_data
  data_lines = File.open("spec/fixtures/files/driver_and_trip_data.prn", "r") do |datafile|
    datafile.readlines
  end

  data_formatted = data_lines[0].split(/\r/).map do |entry|
                      entry.split
                    end

  seed_data.each do |entry|
    if entry[0] == "driver"
      Driver.create!(name: entry[1])
    else
      Dirt.create!(name: entry[1], start: entry[2], end: entry[3], distance: entry[4])
    end
  end
end
