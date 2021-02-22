class SweetenersController < ApplicationController
  def index
    matching_sweeteners = Sweetener.all

    @list_of_sweeteners = matching_sweeteners.order({ :created_at => :desc })

    render({ :template => "sweeteners/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_sweeteners = Sweetener.where({ :id => the_id })

    @the_sweetener = matching_sweeteners.at(0)

    render({ :template => "sweeteners/show.html.erb" })
  end

  def create
    the_sweetener = Sweetener.new
    the_sweetener.name = params.fetch("query_name")

    if the_sweetener.valid?
      the_sweetener.save
      redirect_to("/sweeteners", { :notice => "Sweetener created successfully." })
    else
      redirect_to("/sweeteners", { :notice => "Sweetener failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_sweetener = Sweetener.where({ :id => the_id }).at(0)

    the_sweetener.name = params.fetch("query_name")

    if the_sweetener.valid?
      the_sweetener.save
      redirect_to("/sweeteners/#{the_sweetener.id}", { :notice => "Sweetener updated successfully."} )
    else
      redirect_to("/sweeteners/#{the_sweetener.id}", { :alert => "Sweetener failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_sweetener = Sweetener.where({ :id => the_id }).at(0)

    the_sweetener.destroy

    redirect_to("/sweeteners", { :notice => "Sweetener deleted successfully."} )
  end
end
