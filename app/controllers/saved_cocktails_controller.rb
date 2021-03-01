class SavedCocktailsController < ApplicationController
  def index
    matching_saved_cocktails = SavedCocktail.where({ :user_id => session[:user_id] })

    @list_of_saved_cocktails = matching_saved_cocktails.order({ :created_at => :desc })

    render({ :template => "saved_cocktails/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_saved_cocktails = SavedCocktail.where({ :id => the_id })

    @the_saved_cocktail = matching_saved_cocktails.at(0)

    render({ :template => "saved_cocktails/show.html.erb" })
  end

  def create
    the_saved_cocktail = SavedCocktail.new
    the_saved_cocktail.user_id = params.fetch("query_user_id")
    the_saved_cocktail.format_id = params.fetch("query_format_id")
    the_saved_cocktail.name = params.fetch("query_name")
    the_saved_cocktail.liquor_id = params.fetch("query_liquor_id")
    the_saved_cocktail.sweetener_id = params.fetch("query_sweetener_id")
    the_saved_cocktail.bitters_id = params.fetch("query_bitters_id")
    the_saved_cocktail.citrus_id = params.fetch("query_citrus_id")
    the_saved_cocktail.soda_id = params.fetch("query_soda_id")
    the_saved_cocktail.modifier_id = params.fetch("query_modifier_id")

    if the_saved_cocktail.valid?
      the_saved_cocktail.save
      redirect_to("/saved_cocktails", { :notice => "Saved cocktail created successfully." })
    else
      redirect_to("/saved_cocktails", { :notice => "Saved cocktail failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_saved_cocktail = SavedCocktail.where({ :id => the_id }).at(0)

    the_saved_cocktail.user_id = params.fetch("query_user_id")
    the_saved_cocktail.format_id = params.fetch("query_format_id")
    the_saved_cocktail.name = params.fetch("query_name")
    the_saved_cocktail.liquor_id = params.fetch("query_liquor_id")
    the_saved_cocktail.sweetener_id = params.fetch("query_sweetener_id")
    the_saved_cocktail.bitters_id = params.fetch("query_bitters_id")
    the_saved_cocktail.citrus_id = params.fetch("query_citrus_id")
    the_saved_cocktail.soda_id = params.fetch("query_soda_id")
    the_saved_cocktail.modifier_id = params.fetch("query_modifier_id")

    if the_saved_cocktail.valid?
      the_saved_cocktail.save
      redirect_to("/saved_cocktails/#{the_saved_cocktail.id}", { :notice => "Saved cocktail updated successfully."} )
    else
      redirect_to("/saved_cocktails/#{the_saved_cocktail.id}", { :alert => "Saved cocktail failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_saved_cocktail = SavedCocktail.where({ :id => the_id }).at(0)

    the_saved_cocktail.destroy

    redirect_to("/saved_cocktails", { :notice => "Saved cocktail deleted successfully."} )
  end
end
