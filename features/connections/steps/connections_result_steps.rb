Then /^there should be a connection between "(.*)" and "(.*)"$/ do |requester, requestee|
  requester = requester == "me" ? current_user : User.first(:login => requester)
  requestee = requestee == "me" ? current_user : User.first(:login => requestee)
  Connection.first(:requester => requester, :requestee => requestee).should_not be_nil
end

Then /^the new connection should be (.*)$/ do |state|
  Connection.all(:order => [:created_at]).reverse.first.state.should == state
end