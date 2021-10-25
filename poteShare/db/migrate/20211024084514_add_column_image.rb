class AddColumnImage < ActiveRecord::Migration[6.0]
  def change
    add_column :reserves, :image, :string
  end
end
