Given /the following filmmaker usernames exist/ do |users_table|
	users_table.hashes.each do |user|
		User.create! user
	end
end
