class Driver < ApplicationRecord
  has_many :dirts, dependent: :destroy
  has_many :trips, through: :dirt, source: :driver
  validates :name, presence: true
end
