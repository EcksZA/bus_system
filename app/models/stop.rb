class Stop < ActiveRecord::Base

  validates :bus_id, presence: true
  validates :line_id, presence: true

  belongs_to :bus
end
