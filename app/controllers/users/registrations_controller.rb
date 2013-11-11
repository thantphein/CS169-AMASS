class Users::RegistrationsController < Devise::RegistrationsController
	protected 
		
		def after_sign_up_path_for(resource)
			if resource.filmmaker?
				resource.profilable = Filmmaker.create!
				resource.save!
			elsif resource.nonprofit?
				resource.profilable = Nonprofit.create!
				resource.save!
			end		
			root_path
		end
end
