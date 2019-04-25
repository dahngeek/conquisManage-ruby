class Unit < ApplicationRecord
  belongs_to :counselor
  has_many :pathfinders
end
