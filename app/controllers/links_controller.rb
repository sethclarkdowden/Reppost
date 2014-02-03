class LinksController < ApplicationController

	def show
		@link = Link.find params[:id]
	end

	def new
		@link = Link.new

	end

	def create
		@link = Link.new params[:link].permit(:url, :title, :user_id)
		if @link.save
			redirect_to link_path(@link)
		end
	end

end
