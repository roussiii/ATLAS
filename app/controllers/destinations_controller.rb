class DestinationsController < ApplicationController
  def index
    @destinations = Destination.all
  end

  def show
    @destination = Destination.find(params[:id])
  end

  def new
    @destination = Destination.new
  end

  def create
    @destination = Destination.new(destination_params)
    @destination.save!
    redirect_to destinations_path(@destination)
  end

  def edit
    @destination = Destination.find(params[:id])
  end

  def update
    @destination = Destination.find(params[:id])
    @destination.update(destination_params)
    redirect_to destination_path(@destination)
  end

  def destroy
    @destination = Destination.find(params[:id])
    @destination.destroy
    redirect_to destinations_path, status: :see_other
  end

  private

  def destination_params
    params.require(:destination).permit(:name, :distance, :price, :photo)
  end

end
