class Driver < ApplicationRecord
  has_many :trips, through: :dirt, source: :driver
  validates :name, presence: true
end
