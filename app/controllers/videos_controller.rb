class VideosController < ApplicationController
  def new
		@title = "Add new video"
  end

	def show
    @video = Video.find(params[:id])
  end

end
