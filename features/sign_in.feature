Feature: sign in to AMASS account for registered filmmakers

	As a registered filmmaker
	So that I can access my profile or join new projects
	I want to sign in to my account

Background: filmmakers have signed up for AMASS accounts

	Given the following filmmaker usernames exist:
	| name			 | username			| password |
	| Jackie		 | abc123 			| rst456   |
	| Tom			 | xyz789			| ghi246   |

Scenario: view sign in form
	Given I am on the AMASS home page
	When I press "Sign In"
	Then I should be on the sign in form
	And I should see "Username" input box
	And I should see "Password" input box
	And I should see "Sign in" button

Scenario: sign in with a username
	Given I am on the sign in form
	When I fill in "Username" with "abc123"
	When I fill in "Password" with "rst456"
	When I press "Sign In"
	Then I should be on the home page
	And I should see "Welcome, abc123"

Scenario: sign in with wrong password
	Given I am on the sign in form 
	When I fill in "Username" with "abc123"
	When I fill in "Password" with "r456"
	When I press "Sign In"
	Then I should be on the sign in form
	Then I should see "Username" input box with "abc123"
	Then I should see "Password" input box with bullet points
	Then I should see the warning "The username or password you entered is incorrect"
	Then I should see "Sign in" button

Scenario: sign in with non-existing account
	Given I am on the sign in form 
	When I fill in "Username" with "mno123"
	When I fill in "Password" with "req456"
	When I press "Sign In"
	Then I should be on the sign in form
	Then I should see "Username" input box with "mno123"
	Then I should see "Password" input box with bullet points
	Then I should see the warning "The username or password you entered is incorrect"
	Then I should see "Sign in" button


	
