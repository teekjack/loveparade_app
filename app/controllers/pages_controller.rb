class PagesController < ApplicationController
  def home
		@title = "Love Parade YouTube videos"
  end

  def contact
		@title = "Contact"
  end

	def mapall
		@title = "All videos, one Map"
		@locations = Video.find(:all)
	end

	def map1530
		@title = "15:30-15:39"
		@locations = Video.find(:all, :conditions => {:time => 1530..1539})
		render 'maptimes'
	end

	def map1540
		@title = "15:40-15:49"
		@locations = Video.find(:all, :conditions => {:time => 1540..1549})
		render 'maptimes'
	end

	def map1550
		@title = "15:50-15:59"
		@locations = Video.find(:all, :conditions => {:time => 1550..1559})
		render 'maptimes'
	end

	def map1600
		@title = "16:00-16:09"
		@locations = Video.find(:all, :conditions => {:time => 1600..1609})
		render 'maptimes'
	end
	
	def map1610
		@title = "16:10-16:19"
		@locations = Video.find(:all, :conditions => {:time => 1610..1619})
		render 'maptimes'
	end

	def map1620
		@title = "16:20-16:29"
		@locations = Video.find(:all, :conditions => {:time => 1620..1629})
		render 'maptimes'
	end

	def map1630
		@title = "16:30-16:39"
		@locations = Video.find(:all, :conditions => {:time => 1630..1639})
		render 'maptimes'
	end

	def map1640
		@title = "16:40-16:49"
		@locations = Video.find(:all, :conditions => {:time => 1640..1649})
		render 'maptimes'
	end

	def map1650
		@title = "16:50-16:59"
		@locations = Video.find(:all, :conditions => {:time => 1650..1659})
		render 'maptimes'
	end

	def map1700
		@title = "17:00-17:09"
		@locations = Video.find(:all, :conditions => {:time => 1700..1709})
		render 'maptimes'
	end

	def map1710
		@title = "17:10-17:19"
		@locations = Video.find(:all, :conditions => {:time => 1710..1719})
		render 'maptimes'
	end

	def map1720
		@title = "17:20-17:29"
		@locations = Video.find(:all, :conditions => {:time => 1720..1729})
		render 'maptimes'
	end

	def map1730
		@title = "17:30-17:39"
		@locations = Video.find(:all, :conditions => {:time => 1730..1739})
		render 'maptimes'
	end

	def map1740
		@title = "17:40-17:49"
		@locations = Video.find(:all, :conditions => {:time => 1740..1749})
		render 'maptimes'
	end

	def map1750
		@title = "17:50-17:59"
		@locations = Video.find(:all, :conditions => {:time => 1750..1759})
		render 'maptimes'
	end

end
