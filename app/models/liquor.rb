# == Schema Information
#
# Table name: liquors
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Liquor < ApplicationRecord

  has_many(:cocktails, 
    { :class_name => "Cocktail", 
    :foreign_key => "liquor_id", 
    :dependent => :destroy 
  })

  has_many(:saved_cocktails, 
    { :class_name => "SavedCocktail", 
    :foreign_key => "liquor_id", 
    :dependent => :destroy 
  })

end
