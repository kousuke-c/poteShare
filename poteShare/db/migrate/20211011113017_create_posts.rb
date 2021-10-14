class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :price
      t.integer :area
      t.text :comment
      t.string :image

      t.timestamps
    end
  end
end
