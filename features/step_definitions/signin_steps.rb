Given /^the following (.*?) exist/ do |user_type, users_table|
	users_table.hashes.each do |user|
		if user_type == "filmmakers" then User.create!(user)
        elsif user_type == "non-profits" then User.create!(user)
		end
	end
end

Given /^I am logged in as "(.*?)" with password "(.*?)"$/ do |user,pass|
	visit new_user_session_path
	fill_in "Username", :with => user
	fill_in "Password", :with => pass
	click_button "Sign In"
end
