class CommentsController < ApplicationController
	before_filter :authenticate_user!, :only => [:create]

	def create
		@comment = current_user.comments.create params[:comment].permit(:authenticity_token, :message, :link_id)
		redirect_to :back
	end
end
