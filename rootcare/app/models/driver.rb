class Driver < ApplicationRecord
  has_many :dirts
  validates :name, presence: true, uniqueness: true

private
  def collect_trip_miles
    dirts.map do |trip|
      trip.distance.to_f
    end
  end

end
