def seed_data
  @get_data = File.open("spec/fixtures/files/driver_and_trip_data.prn", "r") do |datafile|
                datafile.readlines
              end

  @data_formatted = @get_data[0].split(/\r/).map do |entry|
                      entry.split
                    end

  @data_formatted.each do |entry|
    if entry[0] == "driver"
      Driver.create!(name: entry[1])
    else
      driver = Driver.find_by(name: entry[1])
      driver.dirts.create!(driver_id: driver.id, start_time: entry[2], end_time: entry[3], distance: entry[4])
    end
  end
end
