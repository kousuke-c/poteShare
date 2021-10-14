class AddColumnReserves < ActiveRecord::Migration[6.0]
  def change
    add_column :reserves, :people, :integer
  end
end
