When /^I go to the "create group" page$/ do
  visit '/users/1/groups/new'
end

When /^I go to the "group page" of "(.*)"$/ do |name|
  group = Group.first(:name => name)
  visit resource(group)
end