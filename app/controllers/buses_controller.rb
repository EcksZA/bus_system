class BusesController < ApplicationController

  def index
    @buses = Bus.all
  end

  def show
    @bus = Bus.find(params[:id])
  end

  def new
    @bus = Bus.new
  end

  def create
    @bus = Bus.new(bus_params)
    if @bus.save
      flash[:notice] = "New Bus Created!"
      redirect_to buses_path
    else
      render 'new'
    end
  end

  def edit
    @bus = Bus.find(params[:id])
  end

private
  def bus_params
    params.require(:bus).permit(:name)
  end

end
