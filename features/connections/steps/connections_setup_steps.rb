Given /^I want to connect with "(.*)"$/ do |login|
  User.first_or_create(:login => login)
end