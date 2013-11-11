Feature: sign out
  As a filmmaker/non-profit
  In order to 
  I want to be able to sign out
  
  Background: some filmmakers/non-profit are existing in the databse

        Given the following filmmakers exist:
        | name         | username     | password   |      email       | usertype  |
        | Jackie       | abc123       | rst45678   | abc123@gmail.com | Filmmaker |
        
         Given the following non-profits exist:
        | name          | username | password   |      email       | usertype   |
        | Organization1 | org1     | 12345678   | org1@example.com | Non-profit |
        
  Scenario: after logging in, users should have an option to logout 
        Given I am logged in as "abc123" with password "rst45678"
        Then I should see "Hi Jackie"
        And I should see "Logout"
        
  Scenario: sign out with filmmaker account
        Given I am logged in as "abc123" with password "rst45678"
        When I follow "Logout"
        Then I should be on the home page
        And I should not see "Hi Jackie"
        And I should see "Login"
        And I should see "Sign Up"
        
  Scenario: sign out with non-profit account
        Given I am logged in as "org1" with password "12345678"
        When I follow "Logout"
        Then I should be on the home page
        And I should not see "Hi Organization1"
        And I should see "Login"
        And I should see "Sign Up"
