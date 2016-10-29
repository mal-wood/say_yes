class UsersController < ActionController::Base

	def index 
	end 

	def delete
		@user = current_user
	end

end 