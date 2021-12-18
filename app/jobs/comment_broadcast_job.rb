class CommentBroadcastJob < ActiveJob
	queue_as :set_default

	def perform(comment)
		ActionCable.server.broadcast "blogs_#{comment.blog.id}_channel", comment: render_comment(comment)
	end


	private

	def render_comment(comment)
		CommentController.renderer partial: 'comments/comment', locals: {comment: comment}
	end

end