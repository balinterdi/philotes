Then /^the "(.*)" gallery should be created$/ do |name|
  Gallery.first(:name => name).should_not be_nil
end