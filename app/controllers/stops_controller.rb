class StopsController < ApplicationController
  def new
    @buses = Bus.all
    @lines = Line.all
    @stop = Stop.new
  end
end
