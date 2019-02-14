class SignupController < ApplicationController

	def index

	end

	def new

		if user = User.new(signup_params)
			if user.save 
			flash[:signup] = "Account Created"
			redirect_to "/signup"
		else
			flash[:signup] = user.error.full_messages
			redirect_to "/signup"
		end
		else
			flash[:signup] = "An error has occured."
			redirect_to "/signup"
		end

	end

	def signup_params

		params.require(:signup).permit(:username, :email, :password, :password_confirmation)

	end

end
