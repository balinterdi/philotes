Then /^a message with "(.*)" as (.*) should be in my Drafts folder$/ do |value, field|
  current_user.drafts.should include(Message.first(field => value))
end

Then /^the message with "(.*)" as (.*) should be deleted$/ do |value, field|
  Message.first(field => value).should be_nil
end

Then /^the new message should be in (.*?)(?:\'s)? outbox$/ do |name, apos_s|
  User.get(:name => name).first.outbox.should include(Message.all(:order => [:created_at]).reverse.first)
end

Then /^the new message should be in (.*?)(?:\'s)? inbox$/ do |name, apos_s|
  User.get(:name => name).first.inbox.should include(Message.all(:order => [:created_at]).reverse.first)
end

Then /^a message with "(.*)" as (.*) should be in (.*?)(?:\'s)? inbox$/ do |value, field, user_name|
  if user_name == 'my'
    user = current_user
  else
    user = User.get(:name => name).first
  end
  user.inbox.should include(Message.first(field => value))
end

Then /^a message with "(.*)" as (.*) should be in (.*?)(?:\'s)? outbox$/ do |value, field, user_name|
  if user_name == 'my'
    user = current_user
  else
    user = User.get(:name => name).first
  end
  user.outbox.should include(Message.first(field => value))
end

