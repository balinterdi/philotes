When /^I go to the "register" page$/ do
  visit '/register'
end

When /^I go to the "edit user" page$/ do
  visit resource(current_user, :edit)
end

When /^the activation link for "(.*)" is followed$/ do |email|
  user = User.first(:email => email)
  #TODO: visit the activation link belonging to the user
  visit '/activate?434839fdfgfg3'
end
