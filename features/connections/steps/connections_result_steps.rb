Then /^there should be a connection between "(.*)" and "(.*)"$/ do |requester, requestee|
  requester = requester == "me" ? current_user : User.first(:login => requester)
  requestee = requestee == "me" ? current_user : User.first(:login => requestee)
  Connection.first(:requester => requester, :requestee => requestee).should_not be_nil
end

Then /^the new connection should be (pending)$/ do |state|
  Connection.all(:order => [:created_at]).reverse.first.state.should == state
end

Then /^the new connection should be of (.*) type$/ do |type|
  Connection.all(:order => [:created_at]).reverse.first.type.should == type
end

Then /^the connection between "(.*)" and "(.*)" should be (.*)$/ do |requester, requestee, state|
  Connection.first(:requester => requester, :requestee => requestee, :state => state).should_not be_nil
end