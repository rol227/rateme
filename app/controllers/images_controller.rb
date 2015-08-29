class ImagesController < ApplicationController
	def upvote
		@image = Image.find(params[:image_id])
		@image.votes.create
		redirect_to groups_path
	end
end
