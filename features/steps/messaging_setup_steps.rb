Given /^(.*) sends a message to (.*) with "(.*)" as (.*)$/ do |sender, receiver, value, field|
  # TODO a find or create in datamapper?
  from = User.create(:login => sender) unless from = User.get(:login => sender)
  to = User.create(:login => receiver) unless to = User.get(:login => receiver)
  Message.create!(:from => from, :to => to, field => value)
end