Given /^I have a "(.*)" gallery$/ do |name|
  Gallery.create(:name => name, :owner => current_user)
end