class NonprofitsController < ApplicationController
	def show
		@nonprofit = Nonprofit.find(params[:id])
		respond_to do |format|
		  format.html # show.html.erb
		  format.json { render json: @nonprofit }
		end
	  end
end
