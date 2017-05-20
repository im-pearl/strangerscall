class SampleNameChangeColumnType < ActiveRecord::Migration
  def change
    change_column(:posts, :alarm, :datetime)
  end
end
