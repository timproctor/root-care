class Dirt < ApplicationRecord
  belongs_to :driver

  validates :driver_id, :start_time, :end_time, :distance, presence: true

  def self.hours_as_seconds(stringed_time)
    time.split(":")[0].to_i * 3600
  end

  def self.minutes_as_seconds(stringed_time)
    time.split(":")[1].to_i * 60
  end

  def self.time_as_seconds(stringed_time)
    hours_as_seconds(stringed_time) + minutes_as_seconds(stringed_time)
  end

  def self.change_in_time(start_time, end_time)
    time_as_seconds(end_time) - time_as_seconds(start_time)
  end
end
