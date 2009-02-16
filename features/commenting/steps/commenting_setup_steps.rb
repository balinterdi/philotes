Given /^"(.*)"'s status is "(.*)"$/ do |login, status|
  user = User.first(:login => login)
  user.status.update_attributes(:text => status, :posted_at => Time.now)
end