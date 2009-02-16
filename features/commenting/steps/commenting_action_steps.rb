When /^I make a comment that says "(.*)"$/ do |body|
  fill_in("body", :with => body)
  click_button("Send comment") 
end