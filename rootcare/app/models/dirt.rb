class Dirt < ApplicationRecord
  validates :name, :start_time, :end_time, :distance, presence: true

end
