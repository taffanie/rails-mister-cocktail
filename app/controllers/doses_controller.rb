class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredient = Ingredient.find(ingredient_params[:ingredient])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
# linking the instance of cocktail with the dose
# equivalent to @dose.cocktail_id = @cocktail_id
    @dose.ingredient = @ingredient

    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end

  def ingredient_params
    params.require(:dose).permit(:ingredient)
  end
end
