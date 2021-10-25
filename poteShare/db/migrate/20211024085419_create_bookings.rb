class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :title
      t.integer :price
      t.string :area
      t.text :comment
      t.datetime :start
      t.datetime :end
      t.integer :roomid
      t.integer :people

      t.timestamps
    end
  end
end
