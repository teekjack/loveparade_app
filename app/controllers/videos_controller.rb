class VideosController < ApplicationController
  def new
		@video = Video.new
		@title = "Add new video"
  end

	def show
    @video = Video.find(params[:id])
		@title = @video.filename
  end

end
