Feature: sign in to AMASS account for registered filmmakers

	As a registered filmmaker
	So that I can access my profile or join new projects
	I want to sign in to my account

Background: filmmakers have signed up for AMASS accounts

	Given the following filmmaker usernames exist:
	| name	 | username	| password |      email       | usertype  |
	| Jackie | abc123 	| rst456   | abc123@gmail.com | Filmmaker |
	| Tom	 | xyz789	| ghi246   | xyz789@gmail.com | Filmmaker |

Scenario: view sign in form
	Given I am on the home page
	When I follow "Login"
	Then I should be on the sign in page
	And I should see "Username"
	And I should see "Password" 
	And I should see "Login" 

Scenario: sign in with a username
	Given I am on the sign in page
	When I fill in "Username" with "abc123"
	And I fill in "Password" with "rst456"
	And I press "Login"
	Then I should be on the home page
	And I should see "Welcome, Jackie"

Scenario: sign in with wrong password
	Given I am on the sign in page
	When I fill in "Username" with "abc123"
	And I fill in "Password" with "r456"
	And I press "Login"
	And I should see "Invalid username/password combination"

Scenario: sign in with non-existing account
	Given I am on the sign in page
	When I fill in "Username" with "mno123"
	When I fill in "Password" with "req456"
	When I press "Login"
	Then I should see "Invalid username/password combination"


	