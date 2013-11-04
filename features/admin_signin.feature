Feature: Sign in to AMASS admin page

  Background:
    Given the following admins exist:
	| email	           | password      | password_confirmation | 
	| admin1@amass.com | moly123456789 | moly123456789         |
	| admin2@amass.com | noly123456789 | noly123456789         |

    Given the following filmmaker usernames exist:
	| name	 | username	| password |      email       | usertype  |
	| Jackie | abc123 	| rst456   | abc123@gmail.com | Filmmaker |
	| Tom	 | xyz789	| ghi246   | xyz789@gmail.com | Filmmaker |

  Scenario: As a regular user who is signed in, I am redirected to the homepage
    Given I am on the sign in page
    When I fill in "Username" with "abc123"
    And I fill in "Password" with "rst456"
    And I press "Login"
    Then I should be on the home page
    And I should see "Welcome, Jackie"

  Scenario: As an admin user, I try to login with incorrect password
    Given I am on the admin page
    When I fill in "Email" with "admin1@amass.com"
    And I fill in "Password" with "moly12345678"
    And I press "Login"
    Then I should see "Invalid email or password."
    And I should be on the admin page

  Scenario: As an admin user, I try to login with incorrect email address
    Given I am on the admin page
    When I fill in "Email" with "admin3@amass.com"
    And I fill in "Password" with "moly123456789"
    And I press "Login"
    Then I should see "Invalid email or password."
    And I should be on the admin page

  Scenario: As an admin user, I try to login with correct password
    Given I am on the admin page
    When I fill in "Email" with "admin1@amass.com"
    And I fill in "Password" with "moly123456789"
    And I press "Login"
    Then I should see "Signed in successfully."
    And I should see "Dashboard"

  Scenario: As an admin user, I try to 
    Given I am logged in with email "admin1@amass.com" and password "moly123456789"
    And I should see "Dashboard"
    And I click logout
    Then I should see 'You need to sign in or sign up before continuing.'





