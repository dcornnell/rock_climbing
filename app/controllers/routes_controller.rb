class RoutesController < ApplicationController
	def index
		@routes = Route.all
	end

	def new
		@new_route = Route.new
	end

	def create
		@new_route = Route.new(route_params)
		if @new_route.save
			redirect_to routes_path
		else
			redirect_to new_route_path
		end
	end

	def edit
		@route = Route.find(params[:id])
	end

	def update
		@route = Route.find(params[:id])
		if @route.update_attributes(route_params)
			redirect_to routes_path
		else
			redirect_to edit_routes_path
		end
	end

	def destroy
		@route = Route.find(params[:id])
		@route.destroy
		redirect_to routes_path
	end
	

private

 def route_params
 	params.require(:route).permit(:name, :grade, :beta, :modifier)
 end
 	
end
