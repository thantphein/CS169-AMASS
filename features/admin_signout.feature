  Scenario: As an admin user, I try to 
    Given I am logged in with email "admin1@amass.com" and password "moly123456789"
    And I should see "Dashboard"
    And I click logout
    Then I should see 'You need to sign in or sign up before continuing.'

