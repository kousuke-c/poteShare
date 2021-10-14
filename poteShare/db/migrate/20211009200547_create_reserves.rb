class CreateReserves < ActiveRecord::Migration[6.0]
  def change
    create_table :reserves do |t|
      t.string :title
      t.integer :price
      t.integer :area
      t.text :comment
      t.datetime :start
      t.datetime :end
      t.text :image

      t.timestamps
    end
  end
end
