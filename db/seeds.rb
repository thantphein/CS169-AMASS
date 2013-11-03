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
      {:name => 'Project F', :location => 'Florida',:category => 'housing', :organization => 'org F', :blurb => 'blurb F', :nonprofit_mission => 'goals for F', :description => 'stuffs for F', :deadline => '06-Nov-2013', :status => 'pending', :budget => '1000'}]

projects.each do |proj|
  Project.create!(proj)
end
