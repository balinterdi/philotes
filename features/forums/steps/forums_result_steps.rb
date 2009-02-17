Then /^a new forum should be created$/ do
  Forum.first.should_not be_nil
end

Then /^I should be the owner of the forum$/ do
  Forum.first.owner.should == current_user
end