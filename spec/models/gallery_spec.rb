require File.join( File.dirname(__FILE__), '..', "spec_helper" )

describe Gallery do
  
  before(:each) do
    @gallery = Gallery.new
  end

  it "should have a name" do
    @gallery.should have_at_least(1).errors_on(:name)
  end
  
  it "can have a location" do
    @gallery.should have_at_least(1).errors_on(:location)
  end
  
  it "can have a date" do
    @gallery.should have_at_least(1).errors_on(:date)
  end

end