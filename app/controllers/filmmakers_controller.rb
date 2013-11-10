class FilmmakersController < ApplicationController
	def show
		@filmmaker = Filmmaker.find(params[:id])
		respond_to do |format|
		  format.html # show.html.erb
		  format.json { render json: @filmmaker }
		end
	  end
end
