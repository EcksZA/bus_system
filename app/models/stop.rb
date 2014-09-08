class Stop < ActiveRecord::Base

  validates :bus_id, presence: true
end
