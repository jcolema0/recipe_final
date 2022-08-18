class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :image
      t.string :title
      t.text :body
      t.integer :category_id
      t.integer :user_id
      t.integer :comments_count

      t.timestamps
    end
  end
end
