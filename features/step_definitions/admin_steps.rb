Given /the following admins exist/ do |table|
  table.hashes.each do |admin|
  AdminUser.create! admin
  end
end

Given /I am logged in with email "(.*?)" and password "(.*?)"$/ do |username, password|
  visit '/admin/login'
  fill_in 'Email', :with => username
  fill_in 'Password', :with => password
  click_button 'Login'
  assert page.has_content? 'Signed in successfully.'
end

When /^I am signed in$/ do
  user = Factory(:user)
  login_as user
end

When /^I am signed in as an admin$/ do
  user = Factory(:user, :admin => true)
  login_as user
end
