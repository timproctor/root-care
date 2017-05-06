class Dirt < ApplicationRecord
  belongs_to :driver

  validates :name, :start_time, :end_time, :distance, presence: true

end
