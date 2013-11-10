Feature: Profile page for filmmakers
    As a filmmaker
    In order to impress the non-profits when applying for a project
    I want to be able to view/edit my profile

    Background: filmmakers are logged in
        Given the following filmmakers exist:
        | name   | username | password |      email       | usertype  |
        | Jackie | abc123   | rst45678   | abc123@gmail.com | filmmaker |
        | Tom    | xyz789   | ghi24689   | xyz789@gmail.com | filmmaker |

        Given the following non-profits exist:
        | name          | username | password   |      email       | usertype   |
        | Organization1 | org1     | 12345678   | org1@example.com | nonprofit |

    Scenario: Filmmakers can view their profiles 
        Given I am logged in as "abc123" with password "rst45678"
        And I follow "Profile"
        Then I should be on the profile page of "abc123"
        And I should see "Jackie"
        And I should see "Edit"
        And I should see "Filmmaker Summary"
        And I should see "About me"
        And I should see "Experience Summary"
        And I should see "Skills and Expertise"
        And I should see "Links to Work Samples"
        And I should see "Contact Information"
        And I should see "Contact Form"
        And I should see "Client Testimonials"
        

    Scenario: Filmmakers can't edit other filmmakers' profiles
        Given I am logged in as "xyz789" with password "ghi24689"
        And I am on the profile page of "abc123"
        Then I should not see "Edit"

    Scenario: Non-profit can't edit filmmakers' profiles
        Given I am logged in as "org1" with password "12345678"
        And I am on the profile page of "abc123"
        Then I should not see "Edit"

    Scenario: Filmmakers can render their profiles' edit pages 
        Given I am logged in as "abc123" with password "rst45678"
        And I am on the profile page of "abc123"
        When I press "Edit"
        Then I should be on the edit page of "abc123"

    Scenario: Filmmakers can make changes to their profiles 
        Given I am logged in as "abc123" with password "rst45678"
        And I am on the edit page of "abc123"
        When I fill in the following:
            | Filmmaker Summary    | Summary     |
            | About me             | About       |
            | Experience Summary   | Experience  | 
            | Skills and Expertise | Skill       |
            | Contact Information  | Information |
        And I press "Save"
        Then I should be on the profile page of "abc123"
		And I should see "Profile updated successfully"
        And I should see "Summary" under "Filmmaker Summary"
        And I should see "About" under "About me"
        And I should see "Experience" under "Experience Summary"
        And I should see "Skill" under "Skills and Expertise"
        And I should see "Information" under "Contact Information"

	Scenario: Filmmakers did not make any changes
		Given I am logged in as "abc123" with password "rst45678"
		And I am on the edit page of "abc123"
		When I press "Save"
		Then I should be on the profile page of "abc123"
		And I should not see "Profile udpated successfully"


