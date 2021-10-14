class Records < ActiveRecord::Migration[6.0]
  def change
    drop_table :shares
    drop_table :posts
  end
end
