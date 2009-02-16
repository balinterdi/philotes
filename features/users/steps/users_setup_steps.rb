Given /^"(.*)" registers$/ do |email|
  #TODO: use a factory (dm-sweatshop) to create a user only having an email address
  User.create(:email => email)
end