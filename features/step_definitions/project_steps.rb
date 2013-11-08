Given /^the following projects exist/ do |table|
	table.hashes.each do |proj|
		Project.create!(proj)
    end
end
