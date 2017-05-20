class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :posts, :user_id_id, :user_id
  end
end
