Given /^I want to connect with "(.*)"$/ do |login|
  User.first_or_create(:login => login)
end

Given /^I have a connection request from "(.*)"$/ do |login|
  requester = User.first_or_create(:login => login)
  Connection.create(:requester => requester, :requestee => current_user, :state => :pending)
end