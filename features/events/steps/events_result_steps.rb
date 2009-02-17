Then /^the "(.*)" event should be created$/ do |name|
  Event.first(:name => name).should_not be_nil
end

Then /^the "(.*)" event should be (public|private)$/ do |name, state|
  Event.first(:name => name).state.should == state
end

Then /^I should be the "(.*)" event organizer$/ do |name|
  Event.first(:name => name).organizer.should == current_user
end

Then /^I should be among the "(.*)" event attenders$/ do |name|
  Event.first(:name => name).attenders.should.include(current_user)
end

#TODO: move this to invitation_result_steps once there are invitation features
Then /^the invitation should be accepted$/ do
  Invitation.first.should be_accepted
end

Then /^an invitation should be created for "(.*)" to the event$/ do |login|
  Event.first.invitations.map { |i| i.to }.should include(User.first(:login => login))
end