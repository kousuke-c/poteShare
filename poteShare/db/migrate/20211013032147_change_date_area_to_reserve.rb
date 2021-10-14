class ChangeDateAreaToReserve < ActiveRecord::Migration[6.0]
  def change
    change_column :reserves, :area, :string
    
  end
end
