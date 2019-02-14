class LoginController < ApplicationController


	def index
		if session[:login_id]
			redirect_to "/home"
		end
	end

	def new
		user = User.find_by(email: login_params[:email])

		if user && user.authenticate(login_params[:password])
			session[:login_id] = user.id
			redirect_to "/home"
		else
			flash[:login_message] = "Could not authenticate user."
			redirect_to "/"
		end

	end

	def login_params
		params.require(:login).permit(:email, :password)
	end


end
