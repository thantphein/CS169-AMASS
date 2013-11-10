<<<<<<< HEAD
Given /^the following projects exist/ do |table|
	table.hashes.each do |proj|
		Project.create!(proj)
    end
=======
# Add a declarative step here for populating the DB with movies.

Given /the following projects exist/ do |projects_table|
  projects_table.hashes.each do |proj|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that project to the database here.
    Project.create(proj)
  end
  @projects = Project.all
  i = 0
  days = 24 * 60 * 60
  @projects = @projects.each{|x| 
              x.created_at = x.created_at - (i * days)
              i+=2
              x.save!}
  # flunk "Implemented"
>>>>>>> origin/FilterProjects
end

