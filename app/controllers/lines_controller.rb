class LinesController < ApplicationController

  def index
    @lines = Line.all
  end

  def show
    @lines = Line.find(params[:id])
  end
end
