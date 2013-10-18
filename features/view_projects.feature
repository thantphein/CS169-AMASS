Feature: View a project

    As I film-maker
    So that I can learn about project details
    I want to view a detail page of project

Background:
        Given I am on the home page
    
Scenario: View a project
        When I press "Browse Project"
        Then I should be on project page
        When I click on project: "Project A"
        Then I should be on "Project A" page
