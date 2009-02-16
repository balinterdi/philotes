Given /^(.*) sends a message to (.*) with "(.*)" as (.*)$/ do |sender, receiver, value, field|
  from = User.first_or_create(:login => sender)
  to = User.first_or_create(:login => receiver)
  Message.create!(:from => from, :to => to, field => value)
end

Given /^I have a message with "(.*)" as subject$/ do |subject|
  Message.create(:from => User.create(:login => 'any_user'), :to => current_user, :subject => subject)
end