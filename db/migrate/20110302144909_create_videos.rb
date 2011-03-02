class CreateVideos < ActiveRecord::Migration
  def self.up
    create_table :videos do |t|
      t.string :filename
      t.string :latitude
      t.string :longitude
      t.text :description
      t.string :url

      t.timestamps
    end
  end

  def self.down
    drop_table :videos
  end
end
