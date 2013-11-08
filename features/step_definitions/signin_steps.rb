Given /^the following filmmakers exist/ do |table|
	table.hashes.each do |user|
		User.create!(user)
    end
end

Given /^the following non-profits exist/ do |table|
	table.hashes.each do |user|
		User.create!(user)
    end
end


Given /^I am logged in as "(.*?)" with password "(.*?)"$/ do |user,pass|
	visit new_user_session_path
	fill_in "Username", :with => user
	fill_in "Password", :with => pass
	click_button "Sign In"
end
