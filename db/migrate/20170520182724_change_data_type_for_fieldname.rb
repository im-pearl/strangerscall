class ChangeDataTypeForFieldname < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.change :alarm, :time
    end
  end
  def self.down
      change_table :posts do |t|
      t.change :alarm, :datetime
    end
  end
end