Feature: sign up page for unregistered user
 
  As an unregistered nonprofit
  So that I can access contents for registered nonprofits
  I want to sign up

Background: user wants to sign up

  Given I am on the home page:

Scenario: view sign up page
  When I press "Sign Up"
  Then I should be on the sign up page
  And I should see "As a Filmmaker"
  And I should see "As a Nonprofit"
  And I should see "Username"
  And I should see "Password"
  And I should see "Re-enter Password"
  And I should see "Name"
  And I should see "Email"


Scenario: sign up using sign up page
  Given I am on the sign up page
  And I check "As a Nonprofit"
  And I fill in "Username" with "janedoe"
  And I fill in "Password" with "123456"
  And I fill in "Name" with "Jane Doe"
  And I fill in "Email" with "jane@doe.com"
  When I press "Sign Up"
  Then I should see "Welcome Jane Doe"

Scenario: sign up failure
  Given I am on the sign up page
  And I do not fill in "Username"
  Or I do not fill in "Password"
  Or I do not fill in "Name"
  Or I do not fill in "Email"
  When I press "Sign Up"
  Then I should see "Signing Up Failed"

Scenario: password is not the same
  Given I am on the sign up page
  And I fill in "Username" with "janedoe"
  And I fill in "Password" with "123456"
  And I fill in "Re-enter Password" with "123457"
  And I fill in "Name" with "Jane Doe"
  And I fill in "Email" with "jane@doe.com"
  When I press "Sign Up"
  Then I should see "Signing Up Failed"


