class PagesController < ApplicationController
  def home
		@title = "Love Parade YouTube Videos"
  end

  def contact
		@title = "Contact"
  end

	def mapall
		@title = "All Videos, one Map"
	end

	def map1530
		@title = "15:30-16:00"
	end
	
	def map1601
		@title = "16:01-16:30"
	end
	
	def map1631
		@title = "16:31-17:00"
	end

	def map1701
		@title = "17:01-17:30"
	end

end
