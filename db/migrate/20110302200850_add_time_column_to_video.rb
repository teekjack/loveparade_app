class AddTimeColumnToVideo < ActiveRecord::Migration
  def self.up
		 add_column :videos, :time, :string
  end

  def self.down
		remove_column :videos, :time
  end
end
