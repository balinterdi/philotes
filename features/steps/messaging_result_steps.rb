# Given /there is a (draft)?\s*blog post titled "(.*)"$/ do |state, post_title|
Then /^the new message should be in (.*?)(\'s)? outbox$/ do |name, apos_s|
  User.get(:name => name).first.outbox.should include(Message.all(:order => [:created_at]).reverse.first)
end

Then /^the new message should be in (.*?)(\'s)? inbox$/ do |name, apos_s|
  User.get(:name => name).first.inbox.should include(Message.all(:order => [:created_at]).reverse.first)
end