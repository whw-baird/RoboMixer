# == Schema Information
#
# Table name: cocktails
#
#  id           :integer          not null, primary key
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  bitters_id   :integer
#  citrus_id    :integer
#  format_id    :integer
#  liquor_id    :integer
#  modifier_id  :integer
#  soda_id      :integer
#  sweetener_id :integer
#
class Cocktail < ApplicationRecord

  belongs_to(:liquor, 
    { :required => false, 
    :class_name => "Liquor", 
    :foreign_key => "liquor_id" 
  })

  belongs_to(:format, 
    { :required => false, 
    :class_name => "Format", 
    :foreign_key => "format_id" 
  })

  belongs_to(:sweetener, 
    { :required => false, 
    :class_name => "Sweetener", 
    :foreign_key => "sweetener_id" 
  })

  belongs_to(:bitters, 
    { :required => false, 
    :class_name => "Bitter", 
    :foreign_key => "bitters_id" 
  })

  belongs_to(:citrus, 
    { :required => false, 
    :class_name => "Citru", 
    :foreign_key => "citrus_id" 
  })

  belongs_to(:soda, 
    { :required => false, 
    :class_name => "Soda", 
    :foreign_key => "soda_id" 
  })

  belongs_to(:modifier, 
    { :required => false, 
    :class_name => "Modifier", 
    :foreign_key => "modifier_id" 
  })

end
