Feature: View a project

    As I film-maker
    So that I can learn about project details
    I want to view a detail page of project

 Background: Add projects to database
        Given the following projects exist:
<<<<<<< HEAD
        | name        | organization | blurb               | nonprofit_mission         | description               | deadline               | status        | budget    |
        | Project A   | org A        | sample blurb        | sample mission            | sample description        | 30-Oct-2013            | open          | 2000      |
        | Project B   | org B        | new blurb           | free mission              | to describe               | 20-Nov-2013            | open          | 5000      |
                | Project C   | org C        | blurb C             | gaols for C               | stuffs for C              | 06-Nov-2013            | pending       | 1000      |
        Given I am on the home page
    
Scenario: View a project
        When I follow "Browse Project"
        Then I should be on the projects page
        When I follow "Project A"
        Then I should be on the "Project A" page
        Then I should see "Project A"
        And I should see "Organization"
        And I should see "Blurb"
=======
        | name        | organization | blurb               | nonprofit mission         | description               | deadline               | status        | budget    |
        | Project A   | org A        | sample blurb        | sample mission            | sample description        | 30-Oct-2013            | open          | 2000      |
        | Project B   | org B        | new blurb           | free mission              | to describe               | 20-Nov-2013            | open          | 5000      |
		| Project C   | org C        | blurb C             | gaols for C               | stuffs for C              | 06-Nov-2013            | pending       | 1000      |
        Given I am on the home page
    
Scenario: View a project
        When I press "Browse Project"
        Then I should be on project page
        When I click on project: "Project A"
        Then I should be on "Project A" page
        Then I should see "Project A"
		And I should see "Project A organization"
        And I should see "Project Blurb"
>>>>>>> origin/SignUp
        And I should see "Nonprofit mission"
        And I should see "Description"
        And I should see "Deadline"
        And I should see "Status"
        And I should see "Budget"


Scenario: View a project
<<<<<<< HEAD
        When I follow "Browse Project"
        Then I should be on the projects page
        When I follow "Project C"
        Then I should be on the "Project C" page
        Then I should see "Project C"
        And I should see "Organization"
        And I should see "Blurb"
=======
        When I press "Browse Project"
        Then I should be on project page
        When I click on project: "Project C"
        Then I should be on "Project C" page
        Then I should see "Project C"
		And I should see "Project C organization"
        And I should see "Project Blurb"
>>>>>>> origin/SignUp
        And I should see "Nonprofit mission"
        And I should see "Description"
        And I should see "Deadline"
        And I should see "Status"
<<<<<<< HEAD
        And I should see "Budget"
=======
        And I should see "Budget"
>>>>>>> origin/SignUp
