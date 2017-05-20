class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user_id, index: true, foreign_key: true
      t.string :context
      t.datetime :alarm
      t.integer :status
      t.integer :user_icon

      t.timestamps null: false
    end
  end
end
