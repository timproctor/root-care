def driver_attributes(overrides = {})
  {

    name: "rex"

  }.merge(overrides)
end

def dirt_attributes(overrides = {})
  {
    driver_id: 1,
    start_time: "1:00",
    end_time: "2:00",
    distance: "60.2"

  }.merge(overrides)

end
