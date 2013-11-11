class NonprofitsController < ApplicationController
	def show
		@nonprofit = Nonprofit.find(params[:id])
	  end

	
	def edit
	    @nonprofit = Nonprofit.find params[:id]
	end

  	def update
    	@nonprofit = Nonprofit.find params[:id]
    	@nonprofit.update_attributes!(params[:nonprofit])
    	flash[:notice] = "Your profile was successfully updated."
    	redirect_to nonprofit_path(@nonprofit)
  	end
end
