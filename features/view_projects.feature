Feature: View a project

    As I film-maker
    So that I can learn about project details
    I want to view a detail page of project

Scenario: View a project
        Given I am on the project page
        When I click on project: "Project A"
        Then I should be on "Project A" page
