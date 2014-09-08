class StopsController < ApplicationController
  def new
    @buses = Bus.all
    @lines = Line.all
    @stop = Stop.new
  end

  def create
    @buses = Bus.all
    @lines = Line.all
    @stop = Stop.new(stop_params)
    if @stop.save
      flash[:notice] = "New Stop was created!"
      redirect_to new_stop_path
    else
      render 'new'
    end
  end

private
  def stop_params
    params.require(:stop).permit(:bus_id, :line_id)
  end
end
