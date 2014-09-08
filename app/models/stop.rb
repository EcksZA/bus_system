class Stop < ActiveRecord::Base

  validates :bus_id, presence: true
  validates :line_id, presence: true
end
