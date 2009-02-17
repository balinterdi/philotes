Then /^the "(.*)" gallery should be created$/ do |name|
  Gallery.first(:name => name).should_not be_nil
end

Then /^the gallery should belong to me$/ do
  Gallery.first.owner.should == current_user
end

Then /^the picture should be added to the gallery$/ do
  Gallery.first.items.should include(GalleryItem.first)
end