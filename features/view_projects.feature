Feature: View a project

    As I film-maker
    So that I can learn about project details
    I want to view a detail page of project

 Background: Add projects to database
        Given the following projects exist:
        | name                      | blurb                         | nonprofit mission         | description               | deadline               | status        | budget    |
        | Project A                 | sample blurb                  | sample mission            | sample description        | 30-Oct-2013            | open          | 2000      |
        | Project B                 | new blurb                     | free mission              | to describe               | 20-Nov-2013            | open          | 5000      |
        Given I am on the home page
    
Scenario: View a project
        When I press "Browse Project"
        Then I should be on project page
        When I click on project: "Project A"
        Then I should be on "Project A" page
        Then I should see "Project A"
        And I should see "Project Blurb"
        And I should see "Nonprofit mission"
        And I shoulds see "Description"
        And I should see "Deadline"
        And I should see "Status"
        And I should see "Budget"
