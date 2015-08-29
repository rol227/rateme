class SessionsController < ApplicationController
	def create
		@user = User.from_omniauth(request.env['omniauth.auth'])

		if @user.persisted?
			session[:user_id] = @user.id 
			redirect_to root_path
		else
			@user = nil
			redirect_to root_path
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_path
	end

	def omniauth_failure
		redirect_to root_path
	end
end
