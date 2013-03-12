class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :ingredients
      t.integer :serves
      t.decimal :cost
      t.string :made_by
      t.datetime :last_made
      t.string :image

      t.timestamps
    end
  end
end
