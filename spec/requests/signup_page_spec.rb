require 'spec_helper'

describe "Signing Up" do
  subject { page }
  before { visit signup_path }
  describe "signup page" do
	it { should have_content('Username') }
	it { should have_content('Name') }
	it { should have_content('Email') }
	it { should have_content('Password') }
        it { should have_content('Password Confirmation') }
        it { should have_content('Are You a Filmmaker or Nonprofit') }     
  end
end
