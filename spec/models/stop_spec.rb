require 'rails_helper'

describe Stop do

  it { should validate_presence_of :bus_id }
  it { should validate_presence_of :line_id }
  it { should belong_to :bus }
  it { should belong_to :line }
end
