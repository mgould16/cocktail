class CocktailsController < ApplicationController

  Cocktails = {
    1 => { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
    2 => { name: "Sushi Samba", address: "City, London", category: "japanese" }
  }

  def index
    @cocktails = Cocktails
  end

  def create
    @cocktail = cocktail.new(name: params[:name], address: params[:address])
    @cocktail.save
  end


  def show
    # @cocktail = Cocktail.find(params[:id])
  end

end
