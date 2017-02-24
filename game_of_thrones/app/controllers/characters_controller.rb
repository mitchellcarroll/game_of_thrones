class CharactersController < ApplicationController

  def index
    @characters = Character.all
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.create(character_params)

    redirect_to character_path(@character)
  end

  def show
    @character = Character.find(params[:name])
  end

  def edit
    @character = Character.find(params[:name])
  end

  def update
    @character = Character.find(params[:name])
    @character.update(character_params)

    redirect_to character_path(@character)
  end

  def destroy
    @character = Character.find(params[:name])
    @character.destroy

    redirect_to character_path
  end

  private
  def character_params
    params.require(:character).permit(:name, :house)
  end
end

# index, edit, create, show, new 
