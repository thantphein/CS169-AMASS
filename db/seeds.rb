# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

projects = [{:name => 'Project A', :organization => 'org A', :blurb => 'sample blurb', :nonprofit_mission => 'sample mission', :description => 'sample description', :deadline => '30-Oct-2013', :status => 'open', :budget => '2000'},
	    {:name => 'Project B', :organization => 'org B', :blurb => 'new blurb', :nonprofit_mission => 'free mission', :description => 'to describe', :deadline => '20-Nov-2013', :status => 'open', :budget => '5000'},
	    {:name => 'Project C', :organization => 'org C', :blurb => 'blurb C', :nonprofit_mission => 'goals for C', :description => 'stuffs for C', :deadline => '06-Nov-2013', :status => 'pending', :budget => '1000'}]

projects.each do |proj|
  Project.create!(proj)
end
