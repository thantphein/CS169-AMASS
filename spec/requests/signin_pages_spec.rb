require 'spec_helper'

describe "Signing in" do
  subject { page }
  before { 
	visit signin_path 
  }
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

  describe "with invalid information" do
	describe "not enter username and password" do
    	before { click_button "Login" }
		it { should have_content('Login') }
		it { should have_content('Remember Me') }
		it { should have_content('New user?') }
		it { should have_content('Sign up now!') }
   		it { should have_css('input#session_username') }
    	it { should have_css('input#session_password') }
		it { should have_content('Invalid username/password combination') }
	end
	
	describe "enter non-existing username" do 
		before do
			fill_in "Username", with: "XYZ"
			fill_in "Password", with: "xyz123"
			click_button "Login"
		end
		it { should have_content('Login') }
		it { should have_content('Remember Me') }
		it { should have_content('New user?') }
		it { should have_content('Sign up now!') }
    	it { should have_css('input#session_username') }
    	it { should have_css('input#session_password') }
		it { should have_content('Invalid username/password combination') }
	end

	describe "enter existing username with wrong password" do
		let(:user) { FactoryGirl.create(:user) } 
		before do
			fill_in "Username", with: user.username
			fill_in "Password", with: "xyz123"
			click_button "Login"
		end
		it { should have_content('Login') }
		it { should have_content('Remember Me') }
		it { should have_content('New user?') }
		it { should have_content('Sign up now!') }
    	it { should have_css('input#session_username') }
	    it { should have_css('input#session_password') }
		it { should have_content('Invalid username/password combination') }
	end
  end

  describe "with valid information" do
	let(:user) { FactoryGirl.create(:user) }
	before do 
		fill_in "Username", with: user.username
		fill_in "Password", with: user.password
		click_button "Login"
	end
	it { should_not have_content('Login') }
	it { should_not have_content('Sign up') }
	it { should have_content('Welcome, Jane Doe') }
	it { should_not have_css('input#session_username') }
	it { should_not have_css('input#session_password') }
	
	
  end
end
