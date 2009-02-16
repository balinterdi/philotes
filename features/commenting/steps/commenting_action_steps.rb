When /^I make a comment that says "(.*)"$/ do |body|
  fill_in("body", :with => body)
  click_button("Send comment") 
end

When /^I go to the "my dashboard" page$/ do
  visit '/dashboard'
end

When /^I delete the "(.*)" comment$/ do |body|
  Comment.first(body => :body).destroy!
end