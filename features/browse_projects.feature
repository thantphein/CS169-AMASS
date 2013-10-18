Feature: browse a list of project
    
    As a film-maker
    So that I can find a project to join
    I want to see all the project available

Background: Project has been added to database
    Given the following projects exist:
        | name                      | blurb                         | nonprofit mission         | description               | deadline               | status        | budget    |
        | Project A                 | sample blurb                  | sample mission            | sample description        | 30-Oct-2013            | open          | 2000      |
        | Project B                 | new blurb                     | free mission              | to describe               | 20-Nov-2013            | open          | 5000      |
    Given I am on the home page

Scenario: Go to browse project page
        When I press "Browse Project"
        Then I am on the project page
        Then I should see "Project A"
        And I should see "Project B"

