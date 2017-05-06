class Dirt < ApplicationRecord
  belongs_to :driver

  validates :start_time, :end_time, :distance, presence: true
end
