Feature: sign in to AMASS account for registered filmmakers

	As a registered filmmaker
	So that I can access my profile or join new projects
	I want to sign in to my account

Background: filmmakers have signed up for AMASS accounts

	Given the following filmmaker usernames exist:
	| name			 | username			| password
	| Jackie		 | abc123 			| rst456
	| Tom			 | xyz789			| ghi246

	And I am on the AMASS home page	

Scenario: view sign in form
	When I press "Sign In"
	Then I should be on the sign in form
	And I should see "User Name" input box
	And I should see "Password" input box
	And I should see "Sign In" button


