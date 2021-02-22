class ModifiersController < ApplicationController
  def index
    matching_modifiers = Modifier.all

    @list_of_modifiers = matching_modifiers.order({ :created_at => :desc })

    render({ :template => "modifiers/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_modifiers = Modifier.where({ :id => the_id })

    @the_modifier = matching_modifiers.at(0)

    render({ :template => "modifiers/show.html.erb" })
  end

  def create
    the_modifier = Modifier.new
    the_modifier.name = params.fetch("query_name")

    if the_modifier.valid?
      the_modifier.save
      redirect_to("/modifiers", { :notice => "Modifier created successfully." })
    else
      redirect_to("/modifiers", { :notice => "Modifier failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_modifier = Modifier.where({ :id => the_id }).at(0)

    the_modifier.name = params.fetch("query_name")

    if the_modifier.valid?
      the_modifier.save
      redirect_to("/modifiers/#{the_modifier.id}", { :notice => "Modifier updated successfully."} )
    else
      redirect_to("/modifiers/#{the_modifier.id}", { :alert => "Modifier failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_modifier = Modifier.where({ :id => the_id }).at(0)

    the_modifier.destroy

    redirect_to("/modifiers", { :notice => "Modifier deleted successfully."} )
  end
end
