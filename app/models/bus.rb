class Bus < ActiveRecord::Base

  validates :name, :presence => true
end
