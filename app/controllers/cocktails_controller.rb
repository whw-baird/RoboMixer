class CocktailsController < ApplicationController
  def index
    matching_cocktails = Cocktail.all

    @list_of_cocktails = matching_cocktails.order({ :created_at => :desc })

    render({ :template => "cocktails/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_cocktails = Cocktail.where({ :id => the_id })

    @the_cocktail = matching_cocktails.at(0)

    render({ :template => "cocktails/show.html.erb" })
  end

  def create
    the_cocktail = Cocktail.new
    the_cocktail.format_id = params.fetch("query_format_id")
    the_cocktail.name = params.fetch("query_name")
    the_cocktail.liquor_id = params.fetch("query_liquor_id")
    the_cocktail.sweetener_id = params.fetch("query_sweetener_id")
    the_cocktail.bitters_id = params.fetch("query_bitters_id")
    the_cocktail.citrus_id = params.fetch("query_citrus_id")
    the_cocktail.soda_id = params.fetch("query_soda_id")
    the_cocktail.modifier_id = params.fetch("query_modifier_id")

    if the_cocktail.valid?
      the_cocktail.save
      redirect_to("/cocktails", { :notice => "Cocktail created successfully." })
    else
      redirect_to("/cocktails", { :notice => "Cocktail failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_cocktail = Cocktail.where({ :id => the_id }).at(0)

    the_cocktail.format_id = params.fetch("query_format_id")
    the_cocktail.name = params.fetch("query_name")
    the_cocktail.liquor_id = params.fetch("query_liquor_id")
    the_cocktail.sweetener_id = params.fetch("query_sweetener_id")
    the_cocktail.bitters_id = params.fetch("query_bitters_id")
    the_cocktail.citrus_id = params.fetch("query_citrus_id")
    the_cocktail.soda_id = params.fetch("query_soda_id")
    the_cocktail.modifier_id = params.fetch("query_modifier_id")

    if the_cocktail.valid?
      the_cocktail.save
      redirect_to("/cocktails/#{the_cocktail.id}", { :notice => "Cocktail updated successfully."} )
    else
      redirect_to("/cocktails/#{the_cocktail.id}", { :alert => "Cocktail failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_cocktail = Cocktail.where({ :id => the_id }).at(0)

    the_cocktail.destroy

    redirect_to("/cocktails", { :notice => "Cocktail deleted successfully."} )
  end
end
