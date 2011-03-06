class VideosController < ApplicationController
	require 'fastercsv'
	require 'cgi'
	require 'RedCloth'

	def new
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
			render 'new'
    end
  end
	
	def edit
    @video = Video.find(params[:id])
    @title = "Edit Video"
  end

	def update
    @video = Video.find(params[:id])
    if @video.update_attributes(params[:video])
      flash[:success] = "Video updated."
      redirect_to @video
    else
      @title = "Edit Video"
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
    @videos = Video.order("videos.time ASC").paginate(:page => params[:page])
  end

	def show
    @video = Video.find(params[:id])
		@title = @video.filename
  end

	 # example action to return the contents
  # of a table in CSV format
  def indexcsv
    @videos = Video.order("videos.time ASC")
    respond_to do |wants|
		  wants.csv do
		    render_csv("videos-#{Time.now.strftime("%Y%m%d")}")
		  end
		end
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
