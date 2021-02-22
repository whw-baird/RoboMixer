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
end
