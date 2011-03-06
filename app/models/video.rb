# == Schema Information
# Schema version: 20110306131926
#
# Table name: videos
#
#  id          :integer         primary key
#  filename    :string(255)
#  latitude    :string(255)
#  longitude   :string(255)
#  description :text
#  url         :string(255)
#  created_at  :timestamp
#  updated_at  :timestamp
#  time        :integer
#

class Video < ActiveRecord::Base

	attr_accessible :filename, :latitude, :longitude, :description, :url, :time

  validates :filename,  :presence => true,
											  :uniqueness => true
                    
  validates :latitude, :presence => true
	validates :longitude, :presence => true

end
