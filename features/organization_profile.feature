Feature: Profile page for non-profits
    As a non-profit
    In order for others to find more info about me
    I want to be able to view/edit my profile

    Background: filmmakers are logged in
        Given the following filmmakers exist:
        | name   | username | password |      email       | usertype  |
        | Jackie | abc123   | rst45678   | abc123@gmail.com | filmmaker |

        Given the following non-profits exist:
        | name          | username | password |      email       | usertype   |
        | Organization1 | org1     | 12345678   | org1@example.com | nonprofit |
        | Organization2 | org2     | 45678923   | org2@example.com | nonprofit |

    Scenario: Organizations can view their profiles
        Given I am logged in as "org1" with password "12345678"
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
        Given I am logged in as "abc123" with password "rst45678"
        And I am on the profile page of "org1"
        Then I should not see "Edit"

    Scenario: Non-profit can't edit other non-profits' profiles
        Given I am logged in as "org2" with password "45678923"
        And I am on the profile page of "org1"
        Then I should not see "Edit"

    Scenario: Non-profits can render their profiles' edit pages 
        Given I am logged in as "org1" with password "12345678"
        And I am on the profile page of "org1"
        When I follow "Edit"
        Then I should be on the edit page of "org1"

