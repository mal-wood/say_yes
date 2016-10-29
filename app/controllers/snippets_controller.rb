class SnippetsController < ActionController::Base

	def index 
		@snippets = Snippet.all 
	end 
	
end 