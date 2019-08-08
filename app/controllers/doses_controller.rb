class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      redirect_to cocktails_path
    end
  end

  def destroy
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.delete
  end

  def update
  end

  def edit
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

end
