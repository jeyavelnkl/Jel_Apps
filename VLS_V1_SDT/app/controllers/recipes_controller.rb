class RecipesController < InheritedResources::Base

  private

    def recipe_params
      params.require(:recipe).permit()
    end
end

