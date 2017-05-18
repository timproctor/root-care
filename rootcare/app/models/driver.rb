class Driver < ApplicationRecord
  has_many :dirts
  validates :name, presence: true, uniqueness: true

  def total_trip_miles
    collect_trip_miles.round.to_s
  end

  def average_speed
    total_distance = collect_trip_miles
    total_rate = collect_trip_seconds

    ((try.total_distance/total_rate)*3600).round
  end

  def collect_trip_miles
    if dirts.empty?
      0
    else
      dirts.map do |trip|
        trip.distance.to_f
      end.inject(:+)
    end
  end

  def collect_trip_seconds
    seconds = []

    dirts.map do |trip|
      seconds << trip.change_in_time(trip.start_time, trip.end_time)
    end
    seconds.inject(:+)
  end

end
