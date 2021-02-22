class CreateCocktails < ActiveRecord::Migration[6.0]
  def change
    create_table :cocktails do |t|
      t.integer :format_id
      t.string :name
      t.integer :liquor_id
      t.integer :sweetener_id
      t.integer :bitters_id
      t.integer :citrus_id
      t.integer :soda_id
      t.integer :modifier_id

      t.timestamps
    end
  end
end
