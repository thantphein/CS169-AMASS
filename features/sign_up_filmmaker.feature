Feature: sign up page for unregistered user
 
  As an unregistered filmmaker
  So that I can access contents for registered filmmakers
  I want to sign up

Background: user wants to sign up

  Given I am on the home page

Scenario: view sign up page
  When I follow "Sign Up"
  Then I should be on the sign up page
  And I should see "Username"
  And I should see "Password"
  And I should see "Password Confirmation"
  And I should see "Name"
  And I should see "Email"
  And I should see "Are You a Filmmaker or Nonprofit?"

Scenario: sign up using sign up page
  Given I am on the sign up page
  And I fill in "Username" with "janedoe"
  And I fill in "Password" with "12345678"
  And I fill in "Password Confirmation" with "12345678"
  And I fill in "Name" with "Jane Doe"
  And I fill in "Email" with "jane@doe.com"
  And I check "Filmmaker"
  When I press "Create an account"
  Then I should be on the home page
  Then I should see "Hi Jane Doe"

Scenario: sign up failure
  Given I am on the sign up page
  And I do not fill in "Username"
  When I press "Create an account"
  Then I should be on the sign up page
  Then I should see "Username is required"

  Given I am on the sign up page
  And I do not fill in "Password"
  When I press "Create an account"
  Then I should be on the sign up page
  Then I should see "Password is required"

  Given I am on the sign up page
  And I do not fill in "Password Confirmation"
  And I fill in "Password" with "12345678"
  When I press "Create an account"
  Then I should be on the sign up page
  Then I should see "Password doesn't match confirmation"

  Given I am on the sign up page
  And I do not fill in "Name"
  When I press "Create an account"
  Then I should be on the sign up page
  Then I should see "Name is required"

  Given I am on the sign up page
  And I do not fill in "Email"
  When I press "Create an account"
  Then I should be on the sign up page
  Then I should see "Email is required"

Scenario: password is not the same
  Given I am on the sign up page
  And I fill in "Username" with "janedoe"
  And I fill in "Password" with "12345678"
  And I fill in "Password Confirmation" with "12345789"
  And I fill in "Name" with "Jane Doe"
  And I fill in "Email" with "jane@doe.com"
  When I press "Create an account"
  Then I should be on the sign up page
  Then I should see "Password doesn't match confirmation"
