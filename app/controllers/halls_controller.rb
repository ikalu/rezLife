class HallsController < ApplicationController
  def index
    @halls = Hall.all
  end

  def show
    @hall = Hall.find(params[:id])
  end
end
