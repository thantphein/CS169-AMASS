Feature: Filter projects

    As a film-maker
    So that I took for new projects based on location and due dates
    I want to narrow my browse results when looking for projects

Background:
        Given I am on the project page
    
Scenario: Filter by location
        When I select the location: "Berkeley"
        When I press "Refresh"
        Then I should be on the project page
        And I should see projects with location "Berkeley"
        But I should not see projects with location "San Jose"

Scenario: Filter by due dates
        When I select due date:
        When I press "Refresh"
        Then I should be on the project page
        And I should see projects
        But I should not see projects

Scenario: Filter by location and due dates
        When I select the location:
        And I select the due date:
        When I press "Refresh"
        Then I should be on the project page
        Then I should see projects with location "" and due date ""
        But I should not see projects with location "" or due date ""
