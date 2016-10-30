class FriendshipsController < ActionController::Base

	def index 
		@friendships = Friendship.all
	end 

end 