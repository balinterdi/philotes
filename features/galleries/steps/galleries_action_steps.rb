When /^I go to the "my galleries" page$/ do
  visit resource(current_user, :galleries)
end