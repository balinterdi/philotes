Given /^I have an invitation for the "(.*)" event$/ do |name|
  Invitation.create(:user => current_user, :to => Event.first(:name => name))
end

Given /^there is a private "(.*)" event$/ do |name|
  Event.create(:organizer => current_user, :name => name)
end