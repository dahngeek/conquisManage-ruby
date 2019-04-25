class Pathfinder < ApplicationRecord
  belongs_to :unit

  def full_name
    self.name + " " + self.last_name
  end
end
