require 'spec_helper'

describe UsersController do
  describe "GET #new" do
    it "assigns a new User to @user" do
      get :new
    end
  end

  describe "POST #create" do
    before :each do
      @attributes = {:name => "A", :username => "a", :password => "123456", :email => "a@a.com", :usertype => "filmmaker"}
    end
    context "with valid attributes" do
      it 'create a new user successfully' do
        post :create, :user => @attributes
        User.find_by_name(@attributes[:name]).should_not == nil
      end
      it 'should redirect to home page' do
         post :create, :user => @attributes
         response.should redirect_to root_path
      end
    end
    context "with invalid attributes" do
      it 'should not create a new user if username does not exist' do
        @attributes.delete(:username)
        post :create, :user => @attributes
        User.all.length.should == 0
      end
      it 'should not create a new user if username is not unique' do
        post :create, :user => @attributes
	@attributes[:name] = "B"
        @attributes[:email] = "b@b.com"
    	post :create, :user => @attributes
        User.find_by_name(@attributes[:name]).should == nil
      end
      it 'should not create a new user if name does not exist' do
        @attributes.delete(:name)
        post :create, :user => @attributes
        User.all.length.should == 0
      end
      it 'should not create a new user if password does not exist' do
        @attributes.delete(:password)
        post :create, :user => @attributes
        User.all.length.should == 0
      end
      it 'should not create a new user if email does not exist' do
        @attributes.delete(:email)
        post :create, :user => @attributes
        User.all.length.should == 0
      end
      it 'should not create a new user if email is not unique' do
        post :create, :user => @attributes
	@attributes[:name] = "B"
	@attributes[:username] = "B"
    	post :create, :user => @attributes
        User.find_by_name(@attributes[:name]).should == nil
      end
      it 'should stay on create page' do
        @attributes.delete(:name)
        post :create, :user => @attributes
        response.should redirect_to signup_path
      end 
    end
  end
end
