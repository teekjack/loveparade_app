class VideosController < ApplicationController
	require 'csv' 

	def new
		@video = Video.new
		@title = "Add new video"
		@timespans = ["","15:30-15:40","15:40-15:50","15:50-16:00","16:00-16:10","16:10-16:20","16:20-16:30","16:30-16:40","16:40-16:50","16:50-17:00","17:00-17:10","17:10-17:20","17:20-17:30"]   
	end

	def create
    @video = Video.new(params[:video])
    if @video.save
			flash[:success] = "Video added!"
      redirect_to @video
    else
      @title = "Add Video"
			@timespans = ["","15:30-15:40","15:40-15:50","15:50-16:00","16:00-16:10","16:10-16:20","16:20-16:30","16:30-16:40","16:40-16:50","16:50-17:00","17:00-17:10","17:10-17:20","17:20-17:30"]
      render 'new'
    end
  end
	
	def edit
    @video = Video.find(params[:id])
    @title = "Edit Video"
		@timespans = ["","15:30-15:40","15:40-15:50","15:50-16:00","16:00-16:10","16:10-16:20","16:20-16:30","16:30-16:40","16:40-16:50","16:50-17:00","17:00-17:10","17:10-17:20","17:20-17:30"] 
  end

	def update
    @video = Video.find(params[:id])
    if @video.update_attributes(params[:video])
      flash[:success] = "Video updated."
      redirect_to @video
    else
      @title = "Edit Video"
			@timespans = ["","15:30-15:40","15:40-15:50","15:50-16:00","16:00-16:10","16:10-16:20","16:20-16:30","16:30-16:40","16:40-16:50","16:50-17:00","17:00-17:10","17:10-17:20","17:20-17:30"] 
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
		@timespans = ["","15:30-15:40","15:40-15:50","15:50-16:00","16:00-16:10","16:10-16:20","16:20-16:30","16:30-16:40","16:40-16:50","16:50-17:00","17:00-17:10","17:10-17:20","17:20-17:30"] 
  end

	def indexcsv
		@videos = Video.all
    respond_to do |format|
      format.html # indexcsv.html.erb
      format.csv  # indexcsv.csv.erb
    end
	end

	def show
    @video = Video.find(params[:id])
		@title = @video.filename
		@timespans = ["","15:30-15:40","15:40-15:50","15:50-16:00","16:00-16:10","16:10-16:20","16:20-16:30","16:30-16:40","16:40-16:50","16:50-17:00","17:00-17:10","17:10-17:20","17:20-17:30"]
  end

	def render_csv(filename = nil)
  	filename ||= params[:action]
  	filename += '.csv'

	  if request.env['HTTP_USER_AGENT'] =~ /msie/i
  	  headers['Pragma'] = 'public'
  	  headers["Content-type"] = "text/plain" 
  	  headers['Cache-Control'] = 'no-cache, must-revalidate, post-check=0, pre-check=0'
  	  headers['Content-Disposition'] = "attachment; filename=\"#{filename}\"" 
  	  headers['Expires'] = "0" 
  	else
  	  headers["Content-Type"] ||= 'text/csv'
  	  headers["Content-Disposition"] = "attachment; filename=\"#{filename}\"" 
  	end

  	render :layout => false
	end

end
