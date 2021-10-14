class CreateShares < ActiveRecord::Migration[6.0]
  def change
    create_table :shares do |t|
      t.string :title
      t.integer :price
      t.integer :area
      t.text :comment
      t.text :image

      t.timestamps
    end
  end
end
