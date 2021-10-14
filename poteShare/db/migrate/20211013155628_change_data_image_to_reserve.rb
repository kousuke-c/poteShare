class ChangeDataImageToReserve < ActiveRecord::Migration[6.0]
  def change
    change_column :reserves, :image, :string
  end
end
