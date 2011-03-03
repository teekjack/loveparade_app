class VideosController < ApplicationController
	 
	def new
		@video = Video.new
		@title = "Add new video"
		@timespans = ["","15:30-16:00","16:01-16:30","16:31-17:00","17:01-17:30"]   
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
	
	def edit
    @video = Video.find(params[:id])
    @title = "Edit Video"
		@timespans = ["","15:30-16:00","16:01-16:30","16:31-17:00","17:01-17:30"] 
  end

	def update
    @video = Video.find(params[:id])
    if @video.update_attributes(params[:video])
      flash[:success] = "Video updated."
      redirect_to @video
    else
      @title = "Edit Video"
			@timespans = ["","15:30-16:00","16:01-16:30","16:31-17:00","17:01-17:30"] 
      render 'edit'
    end
  end

	def destroy
    Video.find(params[:id]).destroy
    flash[:success] = "Video destroyed."
    redirect_to videos_path
  end

	def index
    @title = "All Videos"
    @videos = Video.paginate(:page => params[:page])
		@timespans = ["","15:30-16:00","16:01-16:30","16:31-17:00","17:01-17:30"] 
  end

	def show
    @video = Video.find(params[:id])
		@title = @video.filename
		@timespans = ["","15:30-16:00","16:01-16:30","16:31-17:00","17:01-17:30"] 
  end

end
