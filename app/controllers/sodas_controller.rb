class SodasController < ApplicationController
  def index
    matching_sodas = Soda.all

    @list_of_sodas = matching_sodas.order({ :created_at => :desc })

    render({ :template => "sodas/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_sodas = Soda.where({ :id => the_id })

    @the_soda = matching_sodas.at(0)

    render({ :template => "sodas/show.html.erb" })
  end

  def create
    the_soda = Soda.new
    the_soda.name = params.fetch("query_name")

    if the_soda.valid?
      the_soda.save
      redirect_to("/sodas", { :notice => "Soda created successfully." })
    else
      redirect_to("/sodas", { :notice => "Soda failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_soda = Soda.where({ :id => the_id }).at(0)

    the_soda.name = params.fetch("query_name")

    if the_soda.valid?
      the_soda.save
      redirect_to("/sodas/#{the_soda.id}", { :notice => "Soda updated successfully."} )
    else
      redirect_to("/sodas/#{the_soda.id}", { :alert => "Soda failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_soda = Soda.where({ :id => the_id }).at(0)

    the_soda.destroy

    redirect_to("/sodas", { :notice => "Soda deleted successfully."} )
  end
end
