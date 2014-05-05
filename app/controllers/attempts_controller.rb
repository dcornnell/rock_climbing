class AttemptsController < ApplicationController
	def index
		@attempts = Attempt.all
	end

	def new
		@new_attempt = Attempt.new
	end

	def create
		@new_attempt = Attempt.new(attempt_params)
		grade = @new_attempt.route.score
	
		completed = @new_attempt.completed
			
		flash = @new_attempt.flash
		
		@new_attempt.attempt_score = @new_attempt.add_modifiers(grade, completed, flash)

		if @new_attempt.save
			redirect_to attempts_path
		else
			redirect_to new_attempt_path
		end
	end

	def show
		@attempt = Attempt.find(params[:id])
	end

	def edit
		@attempt = Attempt.find(params[:id])
	end

	def update
		@attempt = Attempt.find(params[:id])
		if @attempt.update_attributes(attempt_params)
			redirect_to attempts_path
		else
			redirect_to edit_attempts_path
		end
	end

	def destroy
		@attempt = Attempt.find(params[:id])
		@attempt.destroy
		redirect_to attempts_path
	end


private

 def attempt_params
 	params.require(:attempt).permit!
 end
 	
end
