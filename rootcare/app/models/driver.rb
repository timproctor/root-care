class Driver < ApplicationRecord
  has_many :dirts
  validates :name, presence: true, uniqueness: true

  def total_trip_miles
    collect_trip_miles.inject(:+).round
  end

private
  def collect_trip_miles
    dirts.map do |trip|
      trip.distance.to_f
    end
  end
end
