class ChangeDataAreaToPost < ActiveRecord::Migration[6.0]
  def change
    change_column :posts, :area ,:string
  end
end
