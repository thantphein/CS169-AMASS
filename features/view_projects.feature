Feature: View a project

    As I film-maker
    So that I can learn about project details
    I want to view a detail page of project

 Background: Add projects to database
        Given the following projects exist:
        | name        | organization | blurb                         | nonprofit mission         | description               | deadline               | status        | budget    |
        | Project A   | org A        | sample blurb                  | sample mission            | sample description        | 30-Oct-2013            | open          | 2000      |
        | Project B   | org B        | new blurb                     | free mission              | to describe               | 20-Nov-2013            | open          | 5000      |
		| Project C   | org C        | blurb C                       | gaols for C               | stuffs for C              | 06-Nov-2013            | pending       | 1000      |
        Given I am on the home page
    
Scenario: View a project
        When I press "Browse Project"
        Then I should be on project page
        When I click on project: "Project A"
        Then I should be on "Project A" page
        Then I should see "Project A"
		And I should see "Project A organization"
        And I should see "Project Blurb"
        And I should see "Nonprofit mission"
        And I should see "Description"
        And I should see "Deadline"
        And I should see "Status"
        And I should see "Budget"


Scenario: View a featured project
		When I click on "Project B" page
		Then I should be on "Project B" page
		Then I should see "Project B"
		And I should see "Project B organization"
		And I should see "Project B blurb"
		And I should see "Project B nonprofit mission"
		And I should see "Project B description"
		And I should see "Project B deadline"
		And I should see "Project B status"
		And I should see "Project B budget"