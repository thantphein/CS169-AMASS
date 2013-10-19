Feature: sign up page for unregistered user
 
  As an unregistered filmmaker
  So that I can access contents for registered filmmakers
  I want to sign up

Background: user wants to sign up

  Given I am on the home page:

Scenario: view sign up page
  When I press "Sign Up"
  Then I should be on the sign up page
  And I should see "As a Filmmaker"
  And I should see "As a Nonprofit"
  And I should see "User Name"
  And I should see "Password"
  And I should see "Name"
  And I should see "Email"

Scenario: sign up using sign up page
  Given I am on the sign up page
  And I check "As a Filmmaker"
  And I fill in "User Name" with "janedoe"
  And I fill in "Password" with "123456"
  And I fill in "Name" with "Jane Doe"
  And I fill in "Email" with "jane@doe.com"
  When I press "Sign Up"
  Then I should see "Welcome Jane Doe"

Scenario: sign up failure
  Given I am on the sign up page
  And I do not fill in "User Name"
  Or I do not fill in "Password"
  Or I do not fill in "Name"
  Or I do not fill in "Email"
  When I press "Sign Up"
  Then I should see "Signing Up Failed"


