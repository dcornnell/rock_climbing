class SessionsController < ApplicationController
	def new
	end


def create
 		
 		user = User.find_by_contact(params[:contact]).try(:authenticate, params[:password])  
 		if user 																									
 			session[:user_id] = user.id
 			redirect_to new_user_path, notice: "logged in"
 		else
 			flash.now.alert = "invalid email or pw"
 			render :new
 		end
 	end

 	def destroy
 		session[:user_id] =nil
 		redirect_to login_path, notice: "You logged out"
 	end
end


