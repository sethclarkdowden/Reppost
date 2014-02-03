class LinksController < ApplicationController

	def show

	end

	def new
		@link = Link.new

	end

	def create
		@link = Link.new params[:link].permit(:url, :title, :user_id)
		if @link.save
			redirect_to(:back)
		end
	end

end
