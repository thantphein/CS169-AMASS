require 'spec_helper'

describe User do

	it { should respond_to(:password_confirmation) }
	it { should respond_to(:remember_token) }
	it { should respond_to(:authenticate) }
	
	before do
		@user = User.new(name: "User", email: "user@example..com", username: "username", password: "foo", password_confirmation: "foo", usertype: "Filmmaker")
	end

	subject { @user }

	describe "remember token" do 
		before { @user.save }
		its(:remember_token) { should_not be_blank }
	end
end
