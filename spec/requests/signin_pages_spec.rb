require 'spec_helper'

describe "Authentication" do
  subject { page }
  before { visit signin_path }
  describe "signin page" do
	it { should have_content('Login') }
	it { should have_content('Remember Me') }
	it { should have_content('New user?') }
	it { should have_content('Sign up now!') }
    it { should have_css('input#session_username') }
    it { should have_css('input#session_password') }
  end

  describe "sign up if not have account" do
 	before { click_link 'Sign up now!' }

    it { should have_content('Sign Up') }
  end
end
