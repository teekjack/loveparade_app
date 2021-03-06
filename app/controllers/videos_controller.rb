class VideosController < ApplicationController
	require 'csv' 

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
  	  headers["Content-Type"] ||= 'text/csv; charset=UTF-8; header=present'
  	  headers["Content-Disposition"] = "attachment; filename=\"#{filename}\"" 
  	end

  	render :layout => false
	end

end
