class SavedCocktailsController < ApplicationController
  def index
    matching_saved_cocktails = SavedCocktail.where({ :user_id => session[:user_id] })

    @list_of_saved_cocktails = matching_saved_cocktails.order({ :updated_at => :desc })

    render({ :template => "saved_cocktails/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    @the_cocktail = SavedCocktail.where({ :id => the_id }).at(0)

    format_redirect = @the_cocktail.format_id
    
    if format_redirect == 1
      render({ :template => "saved_cocktails/three_part.html.erb" })
    elsif format_redirect == 2
      render({ :template => "saved_cocktails/fizz.html.erb" })
    elsif format_redirect == 3
      render({ :template => "saved_cocktails/martini.html.erb" })
    elsif format_redirect == 4
      render({ :template => "saved_cocktails/old_fashioned.html.erb" })
    elsif format_redirect == 5
      render({ :template => "saved_cocktails/sidecar.html.erb" })
    else
      render({ :template => "saved_cocktails/sour.html.erb" })
    end
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
    the_saved_cocktail.image = params.fetch("query_image")

    if session[:user_id] != nil
      if the_saved_cocktail.valid?
        the_saved_cocktail.save
        redirect_to("/saved_cocktails", { :notice => "Cocktail saved." })
      else
        redirect_to("/saved_cocktails", { :notice => "Cocktail failed to save." })
      end
    else  
      redirect_to("/user_sign_in", { :alert => "Must sign in to save cocktails." })
    end

  end

  def update
    the_id = params.fetch("path_id")
    the_saved_cocktail = SavedCocktail.where({ :id => the_id }).at(0)

    the_saved_cocktail.name = params.fetch("query_name")

    if the_saved_cocktail.valid?
      the_saved_cocktail.save
      redirect_to("/saved_cocktails/#{the_saved_cocktail.id}", { :notice => "Name updated successfully."} )
    else
      redirect_to("/saved_cocktails/#{the_saved_cocktail.id}", { :alert => "Failed to update name." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_saved_cocktail = SavedCocktail.where({ :id => the_id }).at(0)

    the_saved_cocktail.destroy

    redirect_to("/saved_cocktails", { :notice => "Cocktail deleted successfully."} )
  end
end
