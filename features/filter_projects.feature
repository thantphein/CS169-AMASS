Feature: Filter Projects

    As a film-maker
    So that I can find the projects with certain criterion
    I want to filter projects

 Background: Add projects to database
        Given the following projects exist:
        | name        | category	|location	| organization | blurb         | nonprofit_mission    | description         | deadline      | status    | budget |
        | Project A   | Education	| Alameda	| org A        | sample blurb  | sample mission       | sample description  | 30-Nov-2013   | open      | 1      |
        | Project B   | Housing		| San Francisco	| org B        | new blurb     | free mission         | to describe         | 31-Dec-2014   | open      | 9      |
        | Project C   | Community	| Santa Clara	| org C        | blurb C       | goals for C          | stuffs for C        | 31-Jan-2014   | pending   | 10     |
        | Project D   | Community	| San Mateo	| org D        | blurb D       | goals for D          | stuffs for D        | 28-Feb-2014   | pending   | 99     |
        | Project E   | Education	| San Francisco	| org E        | blurb E       | goals for E          | stuffs for E        | 28-Feb-2014   | pending   | 100    |
        | Project F   | Community	| Alameda	| org F        | blurb F       | goals for F          | stuffs for F        | 30-Apr-2014   | pending   | 999    |
  
  Given I am on the home page
  When I follow "Browse Project"
  Then I am on the projects page
  Then I should see "Community"
  Then I should see "Education"
  Then I should see "Housing"
  Then I should see "Specialties"
  Then I should see "Region"
  Then I should see "Deadline"
  Then I should see "Budget"

    Scenario: Before Filter
      Then I should see "Project A"
      Then I should see "Project B"
      Then I should see "Project C"
      Then I should see "Project D"
      Then I should see "Project E"
      Then I should see "Project F"

    Scenario: Filter Projects by Specialties
      When I follow "Community"
      Then I should not see "Project A"
      Then I should not see "Project B"
      Then I should see "Project C"
      Then I should see "Project D"
      Then I should not see "Project E"
      Then I should see "Project F"

    Scenario: Filter Projects by Region
      When I follow "Alameda"
      Then I should see "Project A"
      Then I should not see "Project B"
      Then I should not see "Project C"
      Then I should not see "Project D"
      Then I should not see "Project E"
      Then I should see "Project F"

    Scenario: Filter Projects by Budget showing Projects with budgets >= specified $
      When I follow "$$"
      Then I should not see "Project A"
      Then I should not see "Project B"
      Then I should see "Project C"
      Then I should see "Project D"
      Then I should not see "Project E"
      Then I should not see "Project F"

    Scenario: Filter Projects by Deadline showing Projects due after the specified date
      When I follow "31-Dec-2014"
      Then I should not see "Project A"
      Then I should see "Project B"
      Then I should not see "Project C"
      Then I should not see "Project D"
      Then I should not see "Project E"
      Then I should not see "Project F"

    Scenario: Filter Projects by Deadline showing Projects due after the specified date
      When I follow "28-Feb-2014"
      Then I should not see "Project A"
      Then I should see "Project B"
      Then I should not see "Project C"
      Then I should see "Project D"
      Then I should see "Project E"
      Then I should see "Project F"
