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
  And I fill in "Password" with "123456"
  And I fill in "Password Confirmation" with "123456"
  And I fill in "Name" with "Jane Doe"
  And I fill in "Email" with "jane@doe.com"
  And I check "Filmmaker"
  When I press "Sign Up"
  Then I should be on the home page
  Then I should see "Welcome Jane Doe"

Scenario: sign up failure
  Given I am on the sign up page
  And I do not fill in "Username"
  When I press "Sign Up"
  Then I should be on the sign up page
  Then I should see "Username can't be blank"

  Given I am on the sign up page
  And I do not fill in "Password"
  When I press "Sign Up"
  Then I should be on the sign up page
  Then I should see "Password can't be blank"

  Given I am on the sign up page
  And I do not fill in "Password Confirmation"
  When I press "Sign Up"
  Then I should be on the sign up page
  Then I should see "Password can't be blank"

  Given I am on the sign up page
  And I do not fill in "Name"
  When I press "Sign Up"
  Then I should be on the sign up page
  Then I should see "Name can't be blank"

  Given I am on the sign up page
  And I do not fill in "Email"
  When I press "Sign Up"
  Then I should be on the sign up page
  Then I should see "Email can't be blank"

Scenario: password is not the same
  Given I am on the sign up page
  And I fill in "Username" with "janedoe"
  And I fill in "Password" with "123456"
  And I fill in "Password Confirmation" with "123457"
  And I fill in "Name" with "Jane Doe"
  And I fill in "Email" with "jane@doe.com"
  When I press "Sign Up"
  Then I should be on the sign up page
  Then I should see "Password doesn't match confirmation"
