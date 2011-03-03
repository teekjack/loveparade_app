class PagesController < ApplicationController
  def home
		@title = "Love Parade YouTube Videos"
		@timespans = ["","15:30-16:00","16:01-16:30","16:31-17:00","17:01-17:30"] 
  end

  def contact
		@title = "Contact"
		@timespans = ["","15:30-16:00","16:01-16:30","16:31-17:00","17:01-17:30"] 
  end

end
