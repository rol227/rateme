class GroupsController < ApplicationController
	def index
		@groups = Group.all
	end

	def show
		@group = Group.find(params[:id])
	end

	def new
		@group = Group.new
		3.times {@group.images.build}
	end

	def create
		@group = Group.new(group_params)

		if @group.save
			redirect_to groups_path
		else
			render 'new'
		end
	end

	def update
	end

	def destroy
	end

	private

	def group_params
		params.require(:group).permit(:name, images_attributes: [:pic])
	end
end
