# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

projects = [{:name => 'Project A', :location => 'Alabama', :category => 'education', :organization => 'org A', :blurb => 'sample blurb', :nonprofit_mission => 'sample mission', :description => 'sample description', :deadline => '30-Oct-2013', :status => 'open', :budget => '2000'},
      {:name => 'Project B', :location => 'California',:category => 'housing', :organization => 'org B', :blurb => 'new blurb', :nonprofit_mission => 'free mission', :description => 'to describe', :deadline => '20-Nov-2013', :status => 'open', :budget => '5000'},
      {:name => 'Project C', :location => 'California', :category => 'community', :organization => 'org C', :blurb => 'blurb C', :nonprofit_mission => 'goals for C', :description => 'stuffs for C', :deadline => '06-Nov-2013', :status => 'pending', :budget => '1000'},
      {:name => 'Project D', :location => 'Delaware', :category => 'community', :organization => 'org D', :blurb => 'blurb D', :nonprofit_mission => 'goals for D', :description => 'stuffs for D', :deadline => '06-Nov-2013', :status => 'pending', :budget => '1000'},
      {:name => 'Project E', :location => 'Florida', :category => 'education', :organization => 'org E', :blurb => 'blurb E', :nonprofit_mission => 'goals for E', :description => 'stuffs for E', :deadline => '06-Nov-2013', :status => 'pending', :budget => '1000'},
      {:name => 'Project F', :location => 'Florida',:category => 'housing', :organization => 'org F', :blurb => 'blurb F', :nonprofit_mission => 'goals for F', :description => 'stuffs for F', :deadline => '06-Nov-2013', :status => 'pending', :budget => '1000'},
      {:name => "Project 1", :organization => "Nonprofit 1", :blurb => "BLURB FOR THE PROJECT Hella tempor vegan, single-origin coffee cred +1 slow-carb flexitarian gastropub", :nonprofit_mission => "MISSION FOR THE PROJECT Consequat veniam American Apparel duis fashion axe, lo-fi irure laborum culpa. Dolor Terry Richardson stumptown aute fap. Hoodie wayfarers master cleanse", :description => "DESCRIPTION FOR THE PROJECT Etsy nulla adipisicing jean shorts. Ennui Pinterest authentic tofu, non distillery drinking vinegar. Nulla incididunt minim, assumenda Pitchfork gentrify officia 3 wolf moon 90's.", :deadline => "01-Jan-2014", :status => "Looking for filmmakers", :budget => "1000", :category => "Education", :location => "California"}]

projects.each do |proj|
  Project.create!(proj)
end
