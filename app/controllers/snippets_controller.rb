class SnippetsController < ActionController::Base

	def index 
		@user = User.find(current_user.id)
		@snippets = @user.snippets
	end 

	def new
		@user_id = current_user.id
		@snippet = Snippet.new
	end

	def show 
		@snippet = Snippet.find(params[:id])
	end
	
	def create
		@snippet = Snippet.new(snippet_params)
		if @snippet.save
			redirect_to user_snippets_path
		else
			@errors = @snippet.errors.full_messages
		end
	end

	private 
	def snippet_params
		params.require(:snippet).permit(:body, :user_id, :author_name)
	end

end 