Then /^a group should be created with "(.*)" as "(.*)"$/ do |value, attr|
  Group.first(attr => value).should_not be_nil
end

Then /^a group should not be created with "(.*)" as "(.*)"$/ do |value, attr|
  Group.first(attr => value).should be_nil
end

Then /^the new group's admin should be me$/ do
  Group.all(:order => [:created_at]).reverse.first.admin.should == current_user
end

Then /an invitation should be created for "(.*)" to the "(.*)" group$/ do |user, group|
  user = User.first(:login => user)
  group = Group.first(:name => group)
  GroupInvitation.first(:invitee => user, :group => group).should_not be_nil
end

Then /^a message should be created with "(.*)" as "(.*)" to "(.*)"$/ do |value, field, receiver|
  Message.first(field => value, :to => receiver).should_not be_nil
end

Then /^I should be a member of the "(.*)" group$/ do |name|
  group = Group.first(:name => name)
  group.members.should include(current_user)
end
