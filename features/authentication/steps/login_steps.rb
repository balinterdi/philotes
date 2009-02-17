Given /^I am not authenticated$/ do
  # yay!
end

Given /^I am logged in as "(.*)"$/ do |login_name|
  user = User.first(:login => login_name)
  #TODO: call the actual method that makes that user be logged in
  # current_user = user
end

Given /^I am logged in as an admin user$/ do
  an_admin = User.first(:admin => true)
  #TODO: call the actual method that makes that user be logged in
  # current_user = an_admin
end
