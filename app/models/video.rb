# == Schema Information
# Schema version: 20110303210904
#
# Table name: videos
#
#  id          :integer         not null, primary key
#  filename    :string(255)
#  latitude    :string(255)
#  longitude   :string(255)
#  description :text
#  url         :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  time        :integer
#

class Video < ActiveRecord::Base

	attr_accessible :filename, :latitude, :longitude, :description, :url, :time

  validates :filename,  :presence => true,
											  :uniqueness => true
                    
  validates :latitude, :presence => true
	validates :longitude, :presence => true

end
