require File.join( File.dirname(__FILE__), '..', "spec_helper" )

describe GalleryItem do
  
  before(:each) do
    @gallery_item = GalleryItem.new
  end

  it "should have a filename" do
    @gallery_item.should have_at_least(1).errors_on(:filename)
  end
  
  it "should have a file" do
    @gallery_item.should  have_at_least(1).errors_on(:file)
    pending
  end
  
  it "can have a description" do
    pending
  end

end