class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :author
      t.text :content
      t.integer :rating
      t.references :recipe

      t.timestamps
    end
		add_index :reviews, :recipe_id
  end
end
