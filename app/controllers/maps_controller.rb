class MapsController < ApplicationController
  def index
    @map = Map.new
    @maps = Map.all.order(created_at: "DESC")
  end

  def create
    @map = Map.new(map_params)
    if @map.save
      redirect_to maps_path
    end
  end

  def destroy
    @map = Map.find_by(id: params[:id])
    @map.delete
    redirect_to maps_path
  end

  private
  def map_params
    params.require(:map).permit(:address, :latitude,:longitude)
  end

end
