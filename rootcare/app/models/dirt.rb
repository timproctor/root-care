class Dirt < ApplicationRecord
  belongs_to :driver

  validates :driver_id, :start_time, :end_time, :distance, presence: true

  def change_in_time(start_time, end_time)
    time_as_seconds(end_time) - time_as_seconds(start_time)
  end

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
