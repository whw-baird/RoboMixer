class FormatsController < ApplicationController
  def index
    matching_formats = Format.all

    @list_of_formats = matching_formats.order({ :created_at => :desc })

    render({ :template => "formats/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_formats = Format.where({ :id => the_id })

    @the_format = matching_formats.at(0)

    render({ :template => "formats/show.html.erb" })
  end

  def create
    the_format = Format.new
    the_format.name = params.fetch("query_name")

    if the_format.valid?
      the_format.save
      redirect_to("/formats", { :notice => "Format created successfully." })
    else
      redirect_to("/formats", { :notice => "Format failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_format = Format.where({ :id => the_id }).at(0)

    the_format.name = params.fetch("query_name")

    if the_format.valid?
      the_format.save
      redirect_to("/formats/#{the_format.id}", { :notice => "Format updated successfully."} )
    else
      redirect_to("/formats/#{the_format.id}", { :alert => "Format failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_format = Format.where({ :id => the_id }).at(0)

    the_format.destroy

    redirect_to("/formats", { :notice => "Format deleted successfully."} )
  end
end
