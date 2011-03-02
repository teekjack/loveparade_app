class AddFilenameUniquenessIndex < ActiveRecord::Migration
 	def self.up
    add_index :videos, :filename, :unique => true
  end

  def self.down
    remove_index :videos, :filename
  end
end
