class PagesController < ApplicationController
  def home
		@title = "Love Parade YouTube Videos"
  end

  def contact
		@title = "Contact"
  end

	def mapall
		@title = "All Videos, one Map"
		@locations = Video.find(:all)
	end

	def map1530
		@title = "15:30-15:39"
		@locations = Video.where("time < 1540 AND time >= 1530")
		render 'maptimes'
	end

	def map1540
		@title = "15:40-15:49"
		@locations = Video.where("time < 1550 AND time >= 1540")
		render 'maptimes'
	end

	def map1550
		@title = "15:50-15:59"
		@locations = Video.where("time < 1600 AND time >= 1550")
		render 'maptimes'
	end

	def map1600
		@title = "16:00-1609"
		@locations = Video.where("time < 1610 AND time >= 1600")
		render 'maptimes'
	end
	
	def map1610
		@title = "16:10-1619"
		@locations = Video.where("time < 1620 AND time >= 1610")
		render 'maptimes'
	end

	def map1620
		@title = "16:20-1629"
		@locations = Video.where("time < 1630 AND time >= 1620")
		render 'maptimes'
	end

	def map1630
		@title = "16:30-1639"
		@locations = Video.where("time < 1640 AND time >= 1630")
		render 'maptimes'
	end

	def map1640
		@title = "16:40-1649"
		@locations = Video.where("time < 1650 AND time >= 1640")
		render 'maptimes'
	end

	def map1650
		@title = "16:50-1659"
		@locations = Video.where("time < 1700 AND time >= 1650")
		render 'maptimes'
	end

	def map1700
		@title = "17:00-1709"
		@locations = Video.where("time < 1710 AND time >= 1700")
		render 'maptimes'
	end

	def map1710
		@title = "17:10-1719"
		@locations = Video.where("time < 1720 AND time >= 1710")
		render 'maptimes'
	end

	def map1720
		@title = "17:20-1729"
		@locations = Video.where("time < 1730 AND time >= 1720")
		render 'maptimes'
	end

	def map1730
		@title = "17:30-1739"
		@locations = Video.where("time < 1740 AND time >= 1730")
		render 'maptimes'
	end

	def map1740
		@title = "17:40-1749"
		@locations = Video.where("time < 1750 AND time >= 1740")
		render 'maptimes'
	end

	def map1750
		@title = "17:50-1759"
		@locations = Video.where("time < 1800 AND time >= 1750")
		render 'maptimes'
	end

end
