class CreateSweeteners < ActiveRecord::Migration[6.0]
  def change
    create_table :sweeteners do |t|
      t.string :name

      t.timestamps
    end
  end
end
