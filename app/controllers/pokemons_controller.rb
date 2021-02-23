class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.create(pokemon_params)
    redirect_to pokemon_path(@pokemon)
  end

  private

  def pokemon_params
    params.require(:pokemon).permit(:name, :address, :species, :found_on)
  end
end
