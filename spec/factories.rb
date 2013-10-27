require 'user'

FactoryGirl.define do
  factory :user do
    name "Jane Doe"
    username "jane"
    email "jane@doe.com"
  end
end
