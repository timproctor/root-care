# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@get_data = File.open("db/sample_data/driver_and_trip_data.prn", "r") do |datafile|
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
