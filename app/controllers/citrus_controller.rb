class CitrusController < ApplicationController
  def index
    matching_citrus = Citrus.all

    @list_of_citrus = matching_citrus.order({ :created_at => :desc })

    render({ :template => "citrus/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_citrus = Citrus.where({ :id => the_id })

    @the_citru = matching_citrus.at(0)

    render({ :template => "citrus/show.html.erb" })
  end

  def create
    the_citru = Citrus.new
    the_citru.name = params.fetch("query_name")

    if the_citru.valid?
      the_citru.save
      redirect_to("/citrus", { :notice => "Citrus created successfully." })
    else
      redirect_to("/citrus", { :notice => "Citrus failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_citru = Citrus.where({ :id => the_id }).at(0)

    the_citru.name = params.fetch("query_name")

    if the_citru.valid?
      the_citru.save
      redirect_to("/citrus/#{the_citru.id}", { :notice => "Citrus updated successfully."} )
    else
      redirect_to("/citrus/#{the_citru.id}", { :alert => "Citrus failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_citru = Citrus.where({ :id => the_id }).at(0)

    the_citru.destroy

    redirect_to("/citrus", { :notice => "Citrus deleted successfully."} )
  end
end
