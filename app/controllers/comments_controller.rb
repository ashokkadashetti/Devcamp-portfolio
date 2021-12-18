class CommentsController < ApplicationController

	def create
		@comment = current_user.comments.build(comment_params)
		puts "Hello im here"
	end

	def comment_params
		params.require(:comment).permit(:content)
	end

end
