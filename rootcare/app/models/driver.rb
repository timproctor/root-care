class Driver < ApplicationRecord
  has_many :dirts, dependent: :destroy

  validates :name, presence: true
end
