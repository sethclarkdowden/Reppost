class VotesController < ApplicationController
	before_filter :authenticate_user!
	def create
		# @vote = current_user.votes.create params[:vote].permit(:authenticity_token, :up, :link_id)
		# redirect_to :back

		@vote = current_user.votes.where(:link_id => params[:vote][:link_id]).first || current_user.votes.create(params[:vote])
		@vote.update_attributes(:up => params[:vote][:up])
		redirect_to :back
	end
end
