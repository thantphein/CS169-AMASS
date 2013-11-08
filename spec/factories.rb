require 'user'

FactoryGirl.define do
  factory :user do
    name "Jane Doe"
    username "janedoe"
	password "12345678"
	usertype "Filmmaker"
    email "jane@doe.com"
  end
end
