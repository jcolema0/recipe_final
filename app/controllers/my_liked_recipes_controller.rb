class MyLikedRecipesController < ApplicationController
  def index
    matching_my_liked_recipes = MyLikedRecipe.all

    @list_of_my_liked_recipes = matching_my_liked_recipes.order({ :created_at => :desc })

    render({ :template => "my_liked_recipes/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_my_liked_recipes = MyLikedRecipe.where({ :id => the_id })

    @the_my_liked_recipe = matching_my_liked_recipes.at(0)

    render({ :template => "my_liked_recipes/show.html.erb" })
  end

  def create
    the_my_liked_recipe = MyLikedRecipe.new
    the_my_liked_recipe.recipe_id = params.fetch("query_recipe_id")
    the_my_liked_recipe.user_id = params.fetch("query_user_id")

    if the_my_liked_recipe.valid?
      the_my_liked_recipe.save
      redirect_to("/my_liked_recipes", { :notice => "My liked recipe created successfully." })
    else
      redirect_to("/my_liked_recipes", { :alert => the_my_liked_recipe.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_my_liked_recipe = MyLikedRecipe.where({ :id => the_id }).at(0)

    the_my_liked_recipe.recipe_id = params.fetch("query_recipe_id")
    the_my_liked_recipe.user_id = params.fetch("query_user_id")

    if the_my_liked_recipe.valid?
      the_my_liked_recipe.save
      redirect_to("/my_liked_recipes/#{the_my_liked_recipe.id}", { :notice => "My liked recipe updated successfully."} )
    else
      redirect_to("/my_liked_recipes/#{the_my_liked_recipe.id}", { :alert => the_my_liked_recipe.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_my_liked_recipe = MyLikedRecipe.where({ :id => the_id }).at(0)

    the_my_liked_recipe.destroy

    redirect_to("/my_liked_recipes", { :notice => "My liked recipe deleted successfully."} )
  end
end
