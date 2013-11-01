module SessionsHelper
	def sign_in(user, remember = 0)
		if user.is_a?(User)
			remember_token = User.new_remember_token
			if (remember == "1")
				cookies.permanent[:remember_token] = remember_token
			else 
				cookies[:remember_token] = remember_token
			end
		
			user.update_attribute(:remember_token, User.encrypt(remember_token))
			self.current_user = user
		else
			admin_dashboard_path
		end
	end

	def sign_out
		if self.current_user.is_a?(User)
			self.current_user = nil
			cookies.delete(:remember_token)
		else
			super
		end
	end

	def signed_in?
		!current_user.nil?
	end

	def current_user=(user)
		@current_user = user
	end

	def current_user
		remember_token = User.encrypt(cookies[:remember_token])
		@current_user ||= User.find_by_remember_token(remember_token)
	end
end
