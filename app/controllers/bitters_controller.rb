class BittersController < ApplicationController
  def index
    matching_bitters = Bitter.all

    @list_of_bitters = matching_bitters.order({ :created_at => :desc })

    render({ :template => "bitters/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_bitters = Bitter.where({ :id => the_id })

    @the_bitter = matching_bitters.at(0)

    render({ :template => "bitters/show.html.erb" })
  end

  def create
    the_bitter = Bitter.new
    the_bitter.name = params.fetch("query_name")

    if the_bitter.valid?
      the_bitter.save
      redirect_to("/bitters", { :notice => "Bitter created successfully." })
    else
      redirect_to("/bitters", { :notice => "Bitter failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_bitter = Bitter.where({ :id => the_id }).at(0)

    the_bitter.name = params.fetch("query_name")

    if the_bitter.valid?
      the_bitter.save
      redirect_to("/bitters/#{the_bitter.id}", { :notice => "Bitter updated successfully."} )
    else
      redirect_to("/bitters/#{the_bitter.id}", { :alert => "Bitter failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_bitter = Bitter.where({ :id => the_id }).at(0)

    the_bitter.destroy

    redirect_to("/bitters", { :notice => "Bitter deleted successfully."} )
  end
end
