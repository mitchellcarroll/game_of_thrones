class HousesController < ApplicationController

  def index
    @houses = House.all
  end

  def new
    @house = House.new
  end

  def show
    @house = House.find(params[:name])
  end

  def edit
    @house = House.find(params[:name])
  end

  def update
    @house = House.find(params[:name])
    @house.update(house_params)

    redirect_to house_path(@house)
  end

  def delete
    @house = House.find(params[:name])
    @house.destory

    redirect_to house_path
  end

  private
  def house_params
    params.require(:house).permit(:name)
  end
end
