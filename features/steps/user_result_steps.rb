Then /^a user with "(.*)" as (.*) should be created$/ do |value, attr|
  User.first(attr => value).should_not be_nil
end

Then /^the new user should not be activated$/ do
  User.all(:order => [:created_at]).reverse.first.should_not be_activated
end

Then /^an activation email to "(.*)" should be sent$/ do |email|
  #TODO: use some mocking to verify an email was sent
  User.first(:email => email) #...
end

Then /^"(.*)" should be activated$/ do |email|
  User.first(:email => email).should be_activated
end

Then /my password should be "(.*)"/ do |password|
  current_user.password.should == password
end
