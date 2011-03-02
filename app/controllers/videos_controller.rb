class VideosController < ApplicationController
  def new
		@timespans = ["","15:30-16:00","16:01-16:30","16:31-17:00","17:01-17:30"]
		@video = Video.new
		@title = "Add new video"
  end

	def create
    @video = Video.new(params[:video])
    if @video.save
			flash[:success] = "Video added!"
      redirect_to @video
    else
      @title = "Add Video"
			@timespans = ["","15:30-16:00","16:01-16:30","16:31-17:00","17:01-17:30"]
      render 'new'
    end
  end

	def show
    @video = Video.find(params[:id])
		@title = @video.filename
  end

end
