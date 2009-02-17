Then /^the "(.*)" event should be created$/ do |name|
  Event.first(:name => name).should_not be_nil
end

Then /^the "(.*)" event should be public$/ do |name|
  Event.first(:name => name).should be_public
end

Then /^I should be the "(.*)" event organizer$/ do |name|
  Event.first(:name => name).organizer.should == current_user
end