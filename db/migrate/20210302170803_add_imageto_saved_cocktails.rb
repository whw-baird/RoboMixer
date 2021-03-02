class AddImagetoSavedCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :saved_cocktails, :image, :string

    add_column :saved_cocktails, :notes, :string
  end
end
