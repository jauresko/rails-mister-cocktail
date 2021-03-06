class CocktailsController < ApplicationController
  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  # def edit
  #   @cocktail = Cocktail.find(params[:id])
  # end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end

end
