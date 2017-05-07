class Driver < ApplicationRecord
  has_many :dirts
  validates :name, presence: true, uniqueness: true
end
