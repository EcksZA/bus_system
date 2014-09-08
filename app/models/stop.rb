class Stop < ActiveRecord::Base

  validates :bus_id, presence: true
  validates :line_id, presence: true
  validates_uniqueness_of :bus_id, scope: :line_id

  belongs_to :bus
  belongs_to :line

end
