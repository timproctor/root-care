class Dirt < ApplicationRecord
  belongs_to :driver

  validates :driver_id, :start_time, :end_time, :distance, presence: true

  def change_in_time(start_time, end_time)
    time_as_seconds(end_time) - time_as_seconds(start_time)
  end

  def speed(distance, start_time, end_time)
    distance = distance.to_f
    change_in_time = change_in_time(start_time, end_time)

    (distance / change_in_time * 3600).round
  end

  def discard_under_5_and_over_100
    byebug
    trips = driver.second
    trips.drop_while do |trip|
      speed = trip.speed(trip.distance, trip.start_time, trip.end_time)
      speed < 5 && speed > 100
    end
    byebug
  end

private

  def time_as_seconds(stringed_time)
    hours_as_seconds(stringed_time) + minutes_as_seconds(stringed_time)
  end

  def minutes_as_seconds(stringed_time)
    stringed_time.split(":")[1].to_i * 60
  end

  def hours_as_seconds(stringed_time)
    stringed_time.split(":")[0].to_i * 3600
  end

end
