Feature: Profile page for non-profits
    As a non-profit
    In order for others to find more info about me
    I want to be able to view/edit my profile

    Background: filmmakers are logged in
        Given the following filmmakers exist:
        | name   | username | password |      email       | usertype  |
        | Jackie | abc123   | rst456   | abc123@gmail.com | Filmmaker |

        Given the following non-profits exist:
        | name          | username | password |      email       | usertype   |
        | Organization1 | org1     | 123456   | org1@example.com | Non-profit |
        | Organization2 | org2     | 456789   | org2@example.com | Non-profit |

    Scenario: Organizations can view their profiles
        Given I am logged in as "org1" with password "123456"
        And I follow "Profile"
        Then I should be on the profile page of "org1"
        And I should see "Organization1"
        And I should see "Edit"
        And I should see "Non-profit Summary"
        And I should see "About"
        And I should see "Contact Information"
        And I should see "Contact Form"
        And I should see "Listing Projects"

    Scenario: Filmmakers can't edit non-profit's profile
        Given I am logged in as "abc123" with password "rst456"
        And I am on the profile page of "org1"
        Then I should not see "Edit"

    Scenario: Non-profit can't edit other non-profits' profiles
        Given I am logged in as "org2" with password "456789"
        And I am on the profile page of "org1"
        Then I should not see "Edit"

    Scenario: Non-profits can render their profiles' edit pages 
        Given I am logged in as "org1" with password "rst456"
        And I am on the profile page of "org1"
        When I press "Edit"
        Then I should be on the edit page of "org1"

    Scenario: Non-profits can make changes to their profiles 
        Given I am logged in as "org1" with password "rst456"
        And I am on the edit page of "org1"
        When I fill in the following:
            | Non-profit Summary    | Summary     |
            | About                 | About       |
            | Listing Projects      | Projects    |
            | Contact Information   | Info        | 
        And I press "Save"
        Then I should be on the profile page of "org1"
        And I should see "Profile updated successfully"
        And I should see "Summary" under "Non-profit Summary"
        And I should see "About" under "About"
        And I should see "Projects" under "Listing Projects"
        And I should see "Info" under "Contact Information"

    Scenario: Non-profit did not make any changes
        Given I am logged in as "org1" with password "rst456"
        And I am on the edit page of "org1"
        When I press "Save"
        Then I should be on the profile page of "org1"
        And I should not see "Profile updated successfully"

