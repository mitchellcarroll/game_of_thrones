class CharactersController < ApplicationController

  def index
    @characters = Character.all
  end

  def new
    @house = House.find(params[:house_id])
    @character = Character.new
  end

  def create
    @house = House.find(params[:house_id])
    @character = @house.Character.create(character_params)

    redirect_to house_path(@house)
  end

  def show
    @character = Character.find(params[:name])
  end

  def edit
    @house = House.find(params[:house_id])
    @character = Character.find(params[:name])
  end

  def update
    @house = House.find(params[:house_id])
    @character = Character.find(params[:name])
    @character.update(character_params)

    redirect_to house_path(@house)
  end

  def destroy
    @house = House.find(params[:house_id])
    @character = Character.find(params[:name])
    @character.destroy

    redirect_to house_path(@house)
  end

  private
  def character_params
    params.require(:character).permit(:name, :house)
  end
end

# index, edit, create, show, new
