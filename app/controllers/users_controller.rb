class UsersController < ActionController::Base

	def index 
		@snippets = Snippet.all
	end 

	def delete
		@user = current_user
	end

end 