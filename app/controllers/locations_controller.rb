class LocationsController < ApplicationController
	
	def index
		@locations = Location.all		
	end

	def new
		@new_location = Location.new
	end

	def create
		@new_location = Location.new(location_params)
		if @new_location.save
			redirect_to locations_path
		else
			redirect_to new_location_path
		end
	end

	def show
		@location = Location.find(params[:id])
	end

	def edit
		@location = Location.find(params[:id])
	end

	def update
		@location = Location.find(params[:id])
		if @location.update_attributes(location_params)
			redirect_to locations_path
		else
			redirect_to edit_locations_path
		end
	end

	def destroy
		@location = Location.find(params[:id])
		@location.delete
		redirect_to locations_path
	end

	private

	def location_params
		params.require(:location).permit(:name, :camping, :rock_type, :description, :area)
	end

	
end
