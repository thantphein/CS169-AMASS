class FilmmakersController < ApplicationController
	def show
		@filmmaker = Filmmaker.find(params[:id])
	  end
	
	def edit
	    @filmmaker = Filmmaker.find params[:id]
	end

  	def update
    	@filmmaker = Filmmaker.find params[:id]
    	@filmmaker.update_attributes!(params[:filmmaker])
    	flash[:notice] = "Your profile was successfully updated."
    	redirect_to filmmaker_path(@filmmaker)
  	end
end
