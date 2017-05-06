class Dirt < ApplicationRecord
  belongs_to :driver
  belongs_to :trip

  validates :name, :start_time, :end_time, :distance, presence: true
  

end
