require 'user'

FactoryGirl.define do
  factory :user do
    name "Jane Doe"
    username "jane"
	password "foobar"
	usertype "Filmmaker"
    email "jane@doe.com"
  end
end
