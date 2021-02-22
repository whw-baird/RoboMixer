class LiquorsController < ApplicationController
  def index
    matching_liquors = Liquor.all

    @list_of_liquors = matching_liquors.order({ :created_at => :desc })

    render({ :template => "liquors/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_liquors = Liquor.where({ :id => the_id })

    @the_liquor = matching_liquors.at(0)

    render({ :template => "liquors/show.html.erb" })
  end

  def create
    the_liquor = Liquor.new
    the_liquor.name = params.fetch("query_name")

    if the_liquor.valid?
      the_liquor.save
      redirect_to("/liquors", { :notice => "Liquor created successfully." })
    else
      redirect_to("/liquors", { :notice => "Liquor failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_liquor = Liquor.where({ :id => the_id }).at(0)

    the_liquor.name = params.fetch("query_name")

    if the_liquor.valid?
      the_liquor.save
      redirect_to("/liquors/#{the_liquor.id}", { :notice => "Liquor updated successfully."} )
    else
      redirect_to("/liquors/#{the_liquor.id}", { :alert => "Liquor failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_liquor = Liquor.where({ :id => the_id }).at(0)

    the_liquor.destroy

    redirect_to("/liquors", { :notice => "Liquor deleted successfully."} )
  end
end
