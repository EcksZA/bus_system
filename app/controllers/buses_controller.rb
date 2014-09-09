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
    @lines = Line.all
    @bus = Bus.find(params[:id])
  end

  def update
    @lines = Line.all
    @bus = Bus.find(params[:id])
    if @bus.update(bus_params)
      flash[:notice] = "Bus has been updated!"
      redirect_to bus_path(@bus)
    else
      render 'edit'
    end
  end

  def destroy
    @bus = Bus.find(params[:id])
    @bus.destroy
    flash[:notice] = "Bus has been deleted!"
    redirect_to buses_path
  end

private
  def bus_params
    params.require(:bus).permit(:name, :line_ids => [])
  end

end
