Given /^there is a group with "(.*)" as "(.*)"$/ do |value, attr|
  Group.create(attr => value)
end