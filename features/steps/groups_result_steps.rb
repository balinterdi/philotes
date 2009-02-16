Then /^a group should be created with "(.*)" as "(.*)"$/ do |value, attr|
  Group.first(attr => value).should_not be_nil
end

Then /^a group should not be created with "(.*)" as "(.*)"$/ do |value, attr|
  Group.first(attr => value).should be_nil
end

Then /^the new group's admin should be me$/ do
  Group.all(:order => [:created_at]).reverse.first.admin.should == current_user
end

Then /^a new invitation should be created with "(.*)" as "(.*)" to "(.*)"$/ do |value, field, receiver|
  Message.first(field => value, :to => receiver).should_not be_nil
end

