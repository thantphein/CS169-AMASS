Feature: browse a list of project
    
    As a film-maker
    So that I can find a project to join
    I want to see all the project available

Background:
    Given I am on the home page

Scenario: Go to browse project page
        When I press "Browse Project"
        Then I am on the project page
        Then I should see all the project
        When I click on "The Project"
        Then I am on the "The Project" profile

