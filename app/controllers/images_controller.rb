class ImagesController < ApplicationController
	
	def upvote
		@image = Image.find(params[:image_id])
		@image.votes.create
		redirect_to root_path
	end
end
