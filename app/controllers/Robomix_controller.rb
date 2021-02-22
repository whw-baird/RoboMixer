class RobomixController < ApplicationController

  def home

    render({ :template => "Robomix/landing.html.erb" })
  end

  def generate
  end

end