class Dirt < ApplicationRecord
  belongs_to :driver

  validates :driver_id, :start_time, :end_time, :distance, presence: true

end
