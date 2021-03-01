class RobomixController < ApplicationController

  def home

    render({ :template => "Robomix/landing.html.erb" })
  end

  def generator

    render({ :template => "Robomix/generator.html.erb" })
  end

  def output
    # GENERATE COCKTAIL FORMAT AND BASE LIQUOR
    format_array = [1,2,3,4,5,6]
    mix_format = format_array.sample
    @robo_format = Format.where({ :id => mix_format }).at(0)

    liquor_array = [1,2,2,2,2,2,2,2,2,3,3,4,4,4,5,5,6,7,7,7,7,8,8,8,8,8,8,8,8,9,9,9,9,10,11]
    mix_liquor = liquor_array.sample
    @robo_liquor = Liquor.where({ :id => mix_liquor }).at(0)
    @robo_number = rand((1..2047)).to_s
    if mix_format == 1
      # 3-PART
      # liquor, bitters, modifier

      bitters_array = [1,1,1,1,1,1,1,2,2,2,3,4,4,5,5,5,5,5,5,5,6,6,6,7]
      mix_bitters = bitters_array.sample
      @robo_bitters = Bitter.where({ :id => mix_bitters }).at(0)

      modifier_array = [1,1,1,1,1,1,1,1,1,1,1,1,1,2,3,3,3,4,4,4,5,5,5,6,6,7,7,7,8,9,10]
      mix_modifier = modifier_array.sample
      @robo_modifier = Modifier.where({ :id => mix_modifier }).at(0)

      if @robo_bitters.name == @robo_modifier.name
        while @robo_bitters.name == @robo_modifier.name
          modifier_array = [1,1,1,1,1,1,1,1,1,1,1,1,1,2,3,3,3,4,4,4,5,5,5,6,6,7,7,7,8,9,10]
          mix_modifier = modifier_array.sample
          @robo_modifier = Modifier.where({ :id => mix_modifier }).at(0)
        end
      end

      render({ :template => "Robomix/cocktails/three_part.html.erb" })
    elsif mix_format == 2
      # Fizz
      #Liquor, citrus, soda
      citrus_array = [1,2,3,4,5]
      mix_citrus = citrus_array.sample
      @robo_citrus = Citrus.where({ :id => mix_citrus }).at(0)

      soda_array = [1,2,3,4]
      mix_soda = soda_array.sample
      @robo_soda = Soda.where({ :id => mix_soda }).at(0)

      render({ :template => "Robomix/cocktails/fizz.html.erb" })
    elsif mix_format == 3
      # Martini
      # liquor, modifier
      modifier_array = [1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,9,9,10,10]
      mix_modifier = modifier_array.sample
      @robo_modifier = Modifier.where({ :id => mix_modifier }).at(0)

      render({ :template => "Robomix/cocktails/martini.html.erb" })
    elsif mix_format == 4
      # Old Fashioned
      # liquor, sweetener, bitters

      bitters_array = [1,2,3,4]
      mix_bitters = bitters_array.sample
      @robo_bitters = Bitter.where({ :id => mix_bitters }).at(0)

      sweetener_array = [1,2,3]
      mix_sweetener = sweetener_array.sample
      @robo_sweetener = Sweetener.where({ :id => mix_sweetener }).at(0)
      
      render({ :template => "Robomix/cocktails/old_fashioned.html.erb" })
    elsif mix_format == 5
      # Sidecar
      # liquor, citrus, modifier

      citrus_array = [1,2,3,4,5]
      mix_citrus = citrus_array.sample
      @robo_citrus = Citrus.where({ :id => mix_citrus }).at(0)

      modifier_array = [1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,9,9,10,10]
      mix_modifier = modifier_array.sample
      @robo_modifier = Modifier.where({ :id => mix_modifier }).at(0)

      render({ :template => "Robomix/cocktails/sidecar.html.erb" })
    else 
      # Sour
      # liquor, sweetener, citrus

      sweetener_array = [1,2,3]
      mix_sweetener = sweetener_array.sample
      @robo_sweetener = Sweetener.where({ :id => mix_sweetener }).at(0)

      citrus_array = [1,1,1,2,2,2,3,4,4,4,5]
      mix_citrus = citrus_array.sample
      @robo_citrus = Citrus.where({ :id => mix_citrus }).at(0)

      render({ :template => "Robomix/cocktails/sour.html.erb" })
    end

  end

end