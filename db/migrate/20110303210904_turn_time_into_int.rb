class TurnTimeIntoInt < ActiveRecord::Migration
  def self.up
		change_column :videos, :time, :integer
  end

  def self.down
		change_column :videos, :time, :string
  end
end
