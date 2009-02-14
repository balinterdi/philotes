Given /^(.*) sends a message to (.*) with "(.*)" as (.*)$/ do |sender, receiver, value, field|
  from = User.first_or_create(:login => sender)
  to = User.first_or_create(:login => receiver)
  Message.create!(:from => from, :to => to, field => value)
end